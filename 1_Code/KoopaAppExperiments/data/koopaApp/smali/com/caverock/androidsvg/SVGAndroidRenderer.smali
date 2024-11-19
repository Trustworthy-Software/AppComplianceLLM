.class Lcom/caverock/androidsvg/SVGAndroidRenderer;
.super Ljava/lang/Object;
.source "SVGAndroidRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;,
        Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    }
.end annotation


# static fields
.field private static final BEZIER_ARC_FACTOR:F = 0.5522848f

.field private static final DEFAULT_FONT_FAMILY:Ljava/lang/String; = "serif"

.field public static final LUMINANCE_TO_ALPHA_BLUE:F = 0.0722f

.field public static final LUMINANCE_TO_ALPHA_GREEN:F = 0.7151f

.field public static final LUMINANCE_TO_ALPHA_RED:F = 0.2127f

.field private static final TAG:Ljava/lang/String; = "SVGAndroidRenderer"

.field private static supportedFeatures:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private canvas:Landroid/graphics/Canvas;

.field private document:Lcom/caverock/androidsvg/SVG;

.field private dpi:F

.field private matrixStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private parentStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/caverock/androidsvg/SVG$SvgContainer;",
            ">;"
        }
    .end annotation
.end field

.field private ruleMatchContext:Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;

.field private state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

.field private stateStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 116
    const/4 v0, 0x0

    sput-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    return-void
.end method

.method constructor <init>(Landroid/graphics/Canvas;F)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "defaultDPI"    # F

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->ruleMatchContext:Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;

    .line 204
    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    .line 205
    iput p2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->dpi:F

    .line 206
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # [Ljava/lang/Object;

    .line 90
    invoke-static {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 90
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    .locals 1
    .param p0, "x0"    # Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 90
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    return-object v0
.end method

.method static synthetic access$400(Lcom/caverock/androidsvg/SVGAndroidRenderer;)Landroid/graphics/Canvas;
    .locals 1
    .param p0, "x0"    # Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 90
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method static synthetic access$600(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # [Ljava/lang/Object;

    .line 90
    invoke-static {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(FFFFFZZFFLcom/caverock/androidsvg/SVG$PathInterface;)V
    .locals 0
    .param p0, "x0"    # F
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # F
    .param p5, "x5"    # Z
    .param p6, "x6"    # Z
    .param p7, "x7"    # F
    .param p8, "x8"    # F
    .param p9, "x9"    # Lcom/caverock/androidsvg/SVG$PathInterface;

    .line 90
    invoke-static/range {p0 .. p9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->arcTo(FFFFFZZFFLcom/caverock/androidsvg/SVG$PathInterface;)V

    return-void
.end method

.method static synthetic access$800(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # [Ljava/lang/Object;

    .line 90
    invoke-static {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private addObjectToClip(Lcom/caverock/androidsvg/SVG$GraphicsElement;Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$GraphicsElement;
    .param p2, "combinedPath"    # Landroid/graphics/Path;
    .param p3, "combinedPathMatrix"    # Landroid/graphics/Matrix;

    .line 3982
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 3984
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3985
    return-void

    .line 3986
    :cond_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3987
    return-void

    .line 3989
    :cond_1
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_2

    .line 3990
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 3993
    :cond_2
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Rect;

    if-eqz v0, :cond_3

    .line 3994
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Rect;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Rect;)Landroid/graphics/Path;

    move-result-object v0

    .local v0, "path":Landroid/graphics/Path;
    goto :goto_0

    .line 3995
    .end local v0    # "path":Landroid/graphics/Path;
    :cond_3
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Circle;

    if-eqz v0, :cond_4

    .line 3996
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Circle;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Circle;)Landroid/graphics/Path;

    move-result-object v0

    .restart local v0    # "path":Landroid/graphics/Path;
    goto :goto_0

    .line 3997
    .end local v0    # "path":Landroid/graphics/Path;
    :cond_4
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Ellipse;

    if-eqz v0, :cond_5

    .line 3998
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Ellipse;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Ellipse;)Landroid/graphics/Path;

    move-result-object v0

    .restart local v0    # "path":Landroid/graphics/Path;
    goto :goto_0

    .line 3999
    .end local v0    # "path":Landroid/graphics/Path;
    :cond_5
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$PolyLine;

    if-eqz v0, :cond_6

    .line 4000
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$PolyLine;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$PolyLine;)Landroid/graphics/Path;

    move-result-object v0

    .line 4004
    .restart local v0    # "path":Landroid/graphics/Path;
    :goto_0
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 4006
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getClipRuleFromState()Landroid/graphics/Path$FillType;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 4007
    invoke-virtual {p2, v0, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 4008
    return-void

    .line 4002
    .end local v0    # "path":Landroid/graphics/Path;
    :cond_6
    return-void
.end method

.method private addObjectToClip(Lcom/caverock/androidsvg/SVG$Path;Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Path;
    .param p2, "combinedPath"    # Landroid/graphics/Path;
    .param p3, "combinedPathMatrix"    # Landroid/graphics/Matrix;

    .line 3957
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 3959
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3960
    return-void

    .line 3961
    :cond_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3962
    return-void

    .line 3964
    :cond_1
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_2

    .line 3965
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 3967
    :cond_2
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    invoke-direct {v0, p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVG$PathDefinition;)V

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->getPath()Landroid/graphics/Path;

    move-result-object v0

    .line 3969
    .local v0, "path":Landroid/graphics/Path;
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Path;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v1, :cond_3

    .line 3970
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculatePathBounds(Landroid/graphics/Path;)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Path;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 3972
    :cond_3
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 3975
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getClipRuleFromState()Landroid/graphics/Path$FillType;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 3976
    invoke-virtual {p2, v0, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 3977
    return-void
.end method

.method private addObjectToClip(Lcom/caverock/androidsvg/SVG$SvgObject;ZLandroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgObject;
    .param p2, "allowUse"    # Z
    .param p3, "combinedPath"    # Landroid/graphics/Path;
    .param p4, "combinedPathMatrix"    # Landroid/graphics/Matrix;

    .line 3896
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3897
    return-void

    .line 3900
    :cond_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clipStatePush()V

    .line 3902
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Use;

    if-eqz v0, :cond_2

    .line 3903
    if-eqz p2, :cond_1

    .line 3904
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Use;

    invoke-direct {p0, v0, p3, p4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->addObjectToClip(Lcom/caverock/androidsvg/SVG$Use;Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 3906
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "<use> elements inside a <clipPath> cannot reference another <use>"

    invoke-static {v1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3908
    :cond_2
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Path;

    if-eqz v0, :cond_3

    .line 3909
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Path;

    invoke-direct {p0, v0, p3, p4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->addObjectToClip(Lcom/caverock/androidsvg/SVG$Path;Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 3910
    :cond_3
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Text;

    if-eqz v0, :cond_4

    .line 3911
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Text;

    invoke-direct {p0, v0, p3, p4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->addObjectToClip(Lcom/caverock/androidsvg/SVG$Text;Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 3912
    :cond_4
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;

    if-eqz v0, :cond_5

    .line 3913
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$GraphicsElement;

    invoke-direct {p0, v0, p3, p4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->addObjectToClip(Lcom/caverock/androidsvg/SVG$GraphicsElement;Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 3915
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Invalid %s element found in clipPath definition"

    invoke-static {v1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3919
    :goto_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clipStatePop()V

    .line 3920
    return-void
.end method

.method private addObjectToClip(Lcom/caverock/androidsvg/SVG$Text;Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 10
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Text;
    .param p2, "combinedPath"    # Landroid/graphics/Path;
    .param p3, "combinedPathMatrix"    # Landroid/graphics/Matrix;

    .line 4038
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 4040
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4041
    return-void

    .line 4043
    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Text;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_1

    .line 4044
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Text;->transform:Landroid/graphics/Matrix;

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 4047
    :cond_1
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Text;->x:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Text;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Text;->x:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v2

    .line 4048
    .local v0, "x":F
    :goto_1
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Text;->y:Ljava/util/List;

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Text;->y:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Text;->y:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v3, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    goto :goto_3

    :cond_5
    :goto_2
    move v3, v2

    .line 4049
    .local v3, "y":F
    :goto_3
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Text;->dx:Ljava/util/List;

    if-eqz v4, :cond_7

    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Text;->dx:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_6

    goto :goto_4

    :cond_6
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Text;->dx:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    goto :goto_5

    :cond_7
    :goto_4
    move v4, v2

    .line 4050
    .local v4, "dx":F
    :goto_5
    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$Text;->dy:Ljava/util/List;

    if-eqz v5, :cond_9

    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$Text;->dy:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_8

    goto :goto_6

    :cond_8
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Text;->dy:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    :cond_9
    :goto_6
    move v1, v2

    .line 4053
    .local v1, "dy":F
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    sget-object v5, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-eq v2, v5, :cond_b

    .line 4054
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateTextWidth(Lcom/caverock/androidsvg/SVG$TextContainer;)F

    move-result v2

    .line 4055
    .local v2, "textWidth":F
    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    sget-object v6, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-ne v5, v6, :cond_a

    .line 4056
    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v2, v5

    sub-float/2addr v0, v5

    goto :goto_7

    .line 4058
    :cond_a
    sub-float/2addr v0, v2

    .line 4062
    .end local v2    # "textWidth":F
    :cond_b
    :goto_7
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Text;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v2, :cond_c

    .line 4063
    new-instance v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;

    invoke-direct {v2, p0, v0, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FF)V

    .line 4064
    .local v2, "proc":Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;
    invoke-direct {p0, p1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 4065
    new-instance v5, Lcom/caverock/androidsvg/SVG$Box;

    iget-object v6, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget-object v8, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    iget-object v9, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v5, p1, Lcom/caverock/androidsvg/SVG$Text;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 4067
    .end local v2    # "proc":Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;
    :cond_c
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 4069
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 4070
    .local v2, "textAsPath":Landroid/graphics/Path;
    new-instance v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;

    add-float v6, v0, v4

    add-float v7, v3, v1

    invoke-direct {v5, p0, v6, v7, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFLandroid/graphics/Path;)V

    invoke-direct {p0, p1, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 4072
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getClipRuleFromState()Landroid/graphics/Path$FillType;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 4073
    invoke-virtual {p2, v2, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 4074
    return-void
.end method

.method private addObjectToClip(Lcom/caverock/androidsvg/SVG$Use;Landroid/graphics/Path;Landroid/graphics/Matrix;)V
    .locals 3
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Use;
    .param p2, "combinedPath"    # Landroid/graphics/Path;
    .param p3, "combinedPathMatrix"    # Landroid/graphics/Matrix;

    .line 4013
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 4015
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4016
    return-void

    .line 4017
    :cond_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4018
    return-void

    .line 4020
    :cond_1
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Use;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_2

    .line 4021
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Use;->transform:Landroid/graphics/Matrix;

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 4024
    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Use;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->href:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    .line 4025
    .local v0, "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    if-nez v0, :cond_3

    .line 4026
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->href:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Use reference \'%s\' not found"

    invoke-static {v2, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4027
    return-void

    .line 4030
    :cond_3
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 4032
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->addObjectToClip(Lcom/caverock/androidsvg/SVG$SvgObject;ZLandroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 4033
    return-void
.end method

.method private static arcTo(FFFFFZZFFLcom/caverock/androidsvg/SVG$PathInterface;)V
    .locals 45
    .param p0, "lastX"    # F
    .param p1, "lastY"    # F
    .param p2, "rx"    # F
    .param p3, "ry"    # F
    .param p4, "angle"    # F
    .param p5, "largeArcFlag"    # Z
    .param p6, "sweepFlag"    # Z
    .param p7, "x"    # F
    .param p8, "y"    # F
    .param p9, "pather"    # Lcom/caverock/androidsvg/SVG$PathInterface;

    .line 2592
    move/from16 v0, p4

    move/from16 v1, p6

    move/from16 v2, p7

    move/from16 v3, p8

    cmpl-float v4, p0, v2

    if-nez v4, :cond_0

    cmpl-float v4, p1, v3

    if-nez v4, :cond_0

    .line 2596
    return-void

    .line 2600
    :cond_0
    const/4 v4, 0x0

    cmpl-float v5, p2, v4

    if-eqz v5, :cond_a

    cmpl-float v5, p3, v4

    if-nez v5, :cond_1

    goto/16 :goto_6

    .line 2606
    :cond_1
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 2607
    .end local p2    # "rx":F
    .local v5, "rx":F
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 2610
    .end local p3    # "ry":F
    .local v6, "ry":F
    float-to-double v7, v0

    const-wide v9, 0x4076800000000000L    # 360.0

    rem-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    double-to-float v7, v7

    .line 2611
    .local v7, "angleRad":F
    float-to-double v11, v7

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v8, v11

    .line 2612
    .local v8, "cosAngle":F
    float-to-double v11, v7

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v11, v11

    .line 2619
    .local v11, "sinAngle":F
    sub-float v12, p0, v2

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    .line 2620
    .local v12, "dx2":F
    sub-float v14, p1, v3

    div-float/2addr v14, v13

    .line 2623
    .local v14, "dy2":F
    mul-float v15, v8, v12

    mul-float v16, v11, v14

    add-float v15, v15, v16

    .line 2624
    .local v15, "x1":F
    neg-float v9, v11

    mul-float/2addr v9, v12

    mul-float v10, v8, v14

    add-float/2addr v9, v10

    .line 2626
    .local v9, "y1":F
    mul-float v10, v5, v5

    .line 2627
    .local v10, "rx_sq":F
    mul-float v16, v6, v6

    .line 2628
    .local v16, "ry_sq":F
    mul-float v17, v15, v15

    .line 2629
    .local v17, "x1_sq":F
    mul-float v18, v9, v9

    .line 2634
    .local v18, "y1_sq":F
    div-float v19, v17, v10

    div-float v20, v18, v16

    add-float v13, v19, v20

    .line 2635
    .local v13, "radiiCheck":F
    const/high16 v19, 0x3f800000    # 1.0f

    cmpl-float v20, v13, v19

    if-lez v20, :cond_2

    .line 2636
    move/from16 v22, v5

    .end local v5    # "rx":F
    .local v22, "rx":F
    float-to-double v4, v13

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float v5, v4, v22

    .line 2637
    .end local v22    # "rx":F
    .restart local v5    # "rx":F
    move/from16 v23, v10

    move v4, v11

    .end local v10    # "rx_sq":F
    .end local v11    # "sinAngle":F
    .local v4, "sinAngle":F
    .local v23, "rx_sq":F
    float-to-double v10, v13

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v10, v10

    mul-float/2addr v6, v10

    .line 2638
    mul-float v10, v5, v5

    .line 2639
    .end local v23    # "rx_sq":F
    .restart local v10    # "rx_sq":F
    mul-float v16, v6, v6

    goto :goto_0

    .line 2635
    .end local v4    # "sinAngle":F
    .restart local v11    # "sinAngle":F
    :cond_2
    move/from16 v22, v5

    move/from16 v23, v10

    move v4, v11

    .line 2643
    .end local v11    # "sinAngle":F
    .restart local v4    # "sinAngle":F
    :goto_0
    move/from16 v11, p5

    if-ne v11, v1, :cond_3

    const/high16 v23, -0x40800000    # -1.0f

    goto :goto_1

    :cond_3
    move/from16 v23, v19

    :goto_1
    move/from16 v24, v23

    .line 2644
    .local v24, "sign":F
    mul-float v23, v10, v16

    mul-float v25, v10, v18

    sub-float v23, v23, v25

    mul-float v25, v16, v17

    sub-float v23, v23, v25

    mul-float v25, v10, v18

    mul-float v26, v16, v17

    add-float v25, v25, v26

    div-float v23, v23, v25

    .line 2645
    .local v23, "sq":F
    const/16 v20, 0x0

    cmpg-float v25, v23, v20

    if-gez v25, :cond_4

    const/16 v25, 0x0

    goto :goto_2

    :cond_4
    move/from16 v25, v23

    :goto_2
    move/from16 v26, v25

    .line 2646
    .end local v23    # "sq":F
    .local v26, "sq":F
    move/from16 v23, v7

    move/from16 v7, v24

    move/from16 v24, v10

    .end local v10    # "rx_sq":F
    .local v7, "sign":F
    .local v23, "angleRad":F
    .local v24, "rx_sq":F
    float-to-double v10, v7

    move/from16 v25, v7

    move/from16 v27, v13

    move/from16 v7, v26

    move/from16 v26, v12

    .end local v12    # "dx2":F
    .end local v13    # "radiiCheck":F
    .local v7, "sq":F
    .local v25, "sign":F
    .local v26, "dx2":F
    .local v27, "radiiCheck":F
    float-to-double v12, v7

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    double-to-float v10, v10

    .line 2647
    .local v10, "coef":F
    mul-float v11, v5, v9

    div-float/2addr v11, v6

    mul-float/2addr v11, v10

    .line 2648
    .local v11, "cx1":F
    mul-float v12, v6, v15

    div-float/2addr v12, v5

    neg-float v12, v12

    mul-float/2addr v12, v10

    .line 2651
    .local v12, "cy1":F
    add-float v13, p0, v2

    const/high16 v21, 0x40000000    # 2.0f

    div-float v13, v13, v21

    .line 2652
    .local v13, "sx2":F
    add-float v28, p1, v3

    div-float v28, v28, v21

    .line 2653
    .local v28, "sy2":F
    mul-float v21, v8, v11

    mul-float v29, v4, v12

    sub-float v21, v21, v29

    move/from16 v29, v7

    .end local v7    # "sq":F
    .local v29, "sq":F
    add-float v7, v13, v21

    .line 2654
    .local v7, "cx":F
    mul-float v21, v4, v11

    mul-float v30, v8, v12

    add-float v21, v21, v30

    move/from16 v30, v4

    .end local v4    # "sinAngle":F
    .local v30, "sinAngle":F
    add-float v4, v28, v21

    .line 2657
    .local v4, "cy":F
    sub-float v21, v15, v11

    div-float v21, v21, v5

    .line 2658
    .local v21, "ux":F
    sub-float v31, v9, v12

    div-float v31, v31, v6

    .line 2659
    .local v31, "uy":F
    move/from16 v32, v8

    .end local v8    # "cosAngle":F
    .local v32, "cosAngle":F
    neg-float v8, v15

    sub-float/2addr v8, v11

    div-float/2addr v8, v5

    .line 2660
    .local v8, "vx":F
    move/from16 v33, v10

    .end local v10    # "coef":F
    .local v33, "coef":F
    neg-float v10, v9

    sub-float/2addr v10, v12

    div-float/2addr v10, v6

    .line 2664
    .local v10, "vy":F
    mul-float v34, v21, v21

    mul-float v35, v31, v31

    move/from16 v36, v9

    .end local v9    # "y1":F
    .local v36, "y1":F
    add-float v9, v34, v35

    move/from16 v34, v11

    move/from16 v35, v12

    .end local v11    # "cx1":F
    .end local v12    # "cy1":F
    .local v34, "cx1":F
    .local v35, "cy1":F
    float-to-double v11, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v9, v11

    .line 2665
    .local v9, "n":F
    move/from16 v11, v21

    .line 2666
    .local v11, "p":F
    const/4 v12, 0x0

    cmpg-float v37, v31, v12

    if-gez v37, :cond_5

    const/high16 v12, -0x40800000    # -1.0f

    goto :goto_3

    :cond_5
    move/from16 v12, v19

    .line 2667
    .end local v25    # "sign":F
    .local v12, "sign":F
    :goto_3
    move/from16 v37, v13

    move/from16 v25, v14

    .end local v13    # "sx2":F
    .end local v14    # "dy2":F
    .local v25, "dy2":F
    .local v37, "sx2":F
    float-to-double v13, v12

    move/from16 v38, v12

    .end local v12    # "sign":F
    .local v38, "sign":F
    div-float v12, v11, v9

    move/from16 v39, v11

    .end local v11    # "p":F
    .local v39, "p":F
    float-to-double v11, v12

    invoke-static {v11, v12}, Ljava/lang/Math;->acos(D)D

    move-result-wide v11

    mul-double/2addr v13, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v11

    double-to-float v11, v11

    .line 2670
    .local v11, "angleStart":F
    mul-float v12, v21, v21

    mul-float v13, v31, v31

    add-float/2addr v12, v13

    mul-float v13, v8, v8

    mul-float v14, v10, v10

    add-float/2addr v13, v14

    mul-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v9, v12

    .line 2671
    mul-float v12, v21, v8

    mul-float v13, v31, v10

    add-float/2addr v12, v13

    .line 2672
    .end local v39    # "p":F
    .local v12, "p":F
    mul-float v13, v21, v10

    mul-float v14, v31, v8

    sub-float/2addr v13, v14

    const/4 v14, 0x0

    cmpg-float v13, v13, v14

    if-gez v13, :cond_6

    const/high16 v19, -0x40800000    # -1.0f

    :cond_6
    move/from16 v13, v19

    .line 2673
    .end local v38    # "sign":F
    .local v13, "sign":F
    move/from16 v19, v15

    .end local v15    # "x1":F
    .local v19, "x1":F
    float-to-double v14, v13

    move/from16 v20, v8

    .end local v8    # "vx":F
    .local v20, "vx":F
    div-float v8, v12, v9

    move/from16 v22, v9

    .end local v9    # "n":F
    .local v22, "n":F
    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->acos(D)D

    move-result-wide v8

    mul-double/2addr v14, v8

    invoke-static {v14, v15}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    .line 2674
    .local v8, "angleExtent":D
    const-wide/16 v14, 0x0

    if-nez v1, :cond_7

    cmpl-double v38, v8, v14

    if-lez v38, :cond_7

    .line 2675
    const-wide v14, 0x4076800000000000L    # 360.0

    sub-double/2addr v8, v14

    goto :goto_4

    .line 2676
    :cond_7
    if-eqz v1, :cond_8

    cmpg-double v14, v8, v14

    if-gez v14, :cond_8

    .line 2677
    const-wide v14, 0x4076800000000000L    # 360.0

    add-double/2addr v8, v14

    goto :goto_4

    .line 2676
    :cond_8
    const-wide v14, 0x4076800000000000L    # 360.0

    .line 2679
    :goto_4
    rem-double/2addr v8, v14

    .line 2680
    const/high16 v14, 0x43b40000    # 360.0f

    rem-float/2addr v11, v14

    .line 2686
    float-to-double v14, v11

    invoke-static {v14, v15, v8, v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->arcToBeziers(DD)[F

    move-result-object v14

    .line 2689
    .local v14, "bezierPoints":[F
    new-instance v15, Landroid/graphics/Matrix;

    invoke-direct {v15}, Landroid/graphics/Matrix;-><init>()V

    .line 2690
    .local v15, "m":Landroid/graphics/Matrix;
    invoke-virtual {v15, v5, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 2691
    invoke-virtual {v15, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 2692
    invoke-virtual {v15, v7, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 2693
    invoke-virtual {v15, v14}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2699
    array-length v0, v14

    add-int/lit8 v0, v0, -0x2

    aput v2, v14, v0

    .line 2700
    array-length v0, v14

    add-int/lit8 v0, v0, -0x1

    aput v3, v14, v0

    .line 2703
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    array-length v1, v14

    if-ge v0, v1, :cond_9

    .line 2705
    aget v39, v14, v0

    add-int/lit8 v1, v0, 0x1

    aget v40, v14, v1

    add-int/lit8 v1, v0, 0x2

    aget v41, v14, v1

    add-int/lit8 v1, v0, 0x3

    aget v42, v14, v1

    add-int/lit8 v1, v0, 0x4

    aget v43, v14, v1

    add-int/lit8 v1, v0, 0x5

    aget v44, v14, v1

    move-object/from16 v38, p9

    invoke-interface/range {v38 .. v44}, Lcom/caverock/androidsvg/SVG$PathInterface;->cubicTo(FFFFFF)V

    .line 2703
    add-int/lit8 v0, v0, 0x6

    move/from16 v1, p6

    goto :goto_5

    .line 2707
    .end local v0    # "i":I
    :cond_9
    return-void

    .line 2601
    .end local v4    # "cy":F
    .end local v5    # "rx":F
    .end local v6    # "ry":F
    .end local v7    # "cx":F
    .end local v8    # "angleExtent":D
    .end local v10    # "vy":F
    .end local v11    # "angleStart":F
    .end local v12    # "p":F
    .end local v13    # "sign":F
    .end local v14    # "bezierPoints":[F
    .end local v15    # "m":Landroid/graphics/Matrix;
    .end local v16    # "ry_sq":F
    .end local v17    # "x1_sq":F
    .end local v18    # "y1_sq":F
    .end local v19    # "x1":F
    .end local v20    # "vx":F
    .end local v21    # "ux":F
    .end local v22    # "n":F
    .end local v23    # "angleRad":F
    .end local v24    # "rx_sq":F
    .end local v25    # "dy2":F
    .end local v26    # "dx2":F
    .end local v27    # "radiiCheck":F
    .end local v28    # "sy2":F
    .end local v29    # "sq":F
    .end local v30    # "sinAngle":F
    .end local v31    # "uy":F
    .end local v32    # "cosAngle":F
    .end local v33    # "coef":F
    .end local v34    # "cx1":F
    .end local v35    # "cy1":F
    .end local v36    # "y1":F
    .end local v37    # "sx2":F
    .restart local p2    # "rx":F
    .restart local p3    # "ry":F
    :cond_a
    :goto_6
    move-object/from16 v0, p9

    invoke-interface {v0, v2, v3}, Lcom/caverock/androidsvg/SVG$PathInterface;->lineTo(FF)V

    .line 2602
    return-void
.end method

.method private static arcToBeziers(DD)[F
    .locals 21
    .param p0, "angleStart"    # D
    .param p2, "angleExtent"    # D

    .line 2726
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x4056800000000000L    # 90.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 2728
    .local v0, "numSegments":I
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    .line 2729
    .end local p0    # "angleStart":D
    .local v1, "angleStart":D
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    .line 2730
    .end local p2    # "angleExtent":D
    .local v3, "angleExtent":D
    int-to-double v5, v0

    div-double v5, v3, v5

    double-to-float v5, v5

    .line 2733
    .local v5, "angleIncrement":F
    float-to-double v6, v5

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    const-wide v10, 0x3ff5555555555555L    # 1.3333333333333333

    mul-double/2addr v6, v10

    float-to-double v10, v5

    div-double/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v10

    div-double/2addr v6, v8

    .line 2735
    .local v6, "controlLength":D
    mul-int/lit8 v8, v0, 0x6

    new-array v8, v8, [F

    .line 2736
    .local v8, "coords":[F
    const/4 v9, 0x0

    .line 2738
    .local v9, "pos":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v0, :cond_0

    .line 2740
    int-to-float v11, v10

    mul-float/2addr v11, v5

    float-to-double v11, v11

    add-double/2addr v11, v1

    .line 2742
    .local v11, "angle":D
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    .line 2743
    .local v13, "dx":D
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    .line 2745
    .local v15, "dy":D
    add-int/lit8 v17, v9, 0x1

    .end local v9    # "pos":I
    .local v17, "pos":I
    mul-double v18, v6, v15

    move/from16 v20, v0

    move-wide/from16 p0, v1

    .end local v0    # "numSegments":I
    .end local v1    # "angleStart":D
    .local v20, "numSegments":I
    .restart local p0    # "angleStart":D
    sub-double v0, v13, v18

    double-to-float v0, v0

    aput v0, v8, v9

    .line 2746
    add-int/lit8 v0, v17, 0x1

    .end local v17    # "pos":I
    .local v0, "pos":I
    mul-double v1, v6, v13

    add-double/2addr v1, v15

    double-to-float v1, v1

    aput v1, v8, v17

    .line 2748
    float-to-double v1, v5

    add-double/2addr v11, v1

    .line 2749
    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    .line 2750
    .end local v13    # "dx":D
    .local v1, "dx":D
    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    .line 2751
    .end local v15    # "dy":D
    .local v13, "dy":D
    add-int/lit8 v9, v0, 0x1

    .end local v0    # "pos":I
    .restart local v9    # "pos":I
    mul-double v15, v6, v13

    move-wide/from16 p2, v3

    .end local v3    # "angleExtent":D
    .restart local p2    # "angleExtent":D
    add-double v3, v1, v15

    double-to-float v3, v3

    aput v3, v8, v0

    .line 2752
    add-int/lit8 v0, v9, 0x1

    .end local v9    # "pos":I
    .restart local v0    # "pos":I
    mul-double v3, v6, v1

    sub-double v3, v13, v3

    double-to-float v3, v3

    aput v3, v8, v9

    .line 2754
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "pos":I
    .local v3, "pos":I
    double-to-float v4, v1

    aput v4, v8, v0

    .line 2755
    add-int/lit8 v9, v3, 0x1

    .end local v3    # "pos":I
    .restart local v9    # "pos":I
    double-to-float v0, v13

    aput v0, v8, v3

    .line 2738
    .end local v1    # "dx":D
    .end local v11    # "angle":D
    .end local v13    # "dy":D
    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v1, p0

    move-wide/from16 v3, p2

    move/from16 v0, v20

    goto :goto_0

    .line 2757
    .end local v10    # "i":I
    .end local v20    # "numSegments":I
    .end local p0    # "angleStart":D
    .end local p2    # "angleExtent":D
    .local v0, "numSegments":I
    .local v1, "angleStart":D
    .local v3, "angleExtent":D
    :cond_0
    return-object v8
.end method

.method private calculateClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)Landroid/graphics/Path;
    .locals 10
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElement;
    .param p2, "boundingBox"    # Lcom/caverock/androidsvg/SVG$Box;

    .line 3661
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    .line 3662
    .local v0, "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    if-nez v0, :cond_0

    .line 3663
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ClipPath reference \'%s\' not found"

    invoke-static {v2, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3664
    const/4 v1, 0x0

    return-object v1

    .line 3667
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/caverock/androidsvg/SVG$ClipPath;

    .line 3670
    .local v1, "clipPath":Lcom/caverock/androidsvg/SVG$ClipPath;
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3674
    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v2

    iput-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 3676
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$ClipPath;->clipPathUnitsAreUser:Ljava/lang/Boolean;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$ClipPath;->clipPathUnitsAreUser:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v3

    .line 3677
    .local v2, "userUnits":Z
    :goto_1
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 3678
    .local v4, "m":Landroid/graphics/Matrix;
    if-nez v2, :cond_3

    .line 3680
    iget v5, p2, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget v6, p2, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 3681
    iget v5, p2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget v6, p2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 3683
    :cond_3
    iget-object v5, v1, Lcom/caverock/androidsvg/SVG$ClipPath;->transform:Landroid/graphics/Matrix;

    if-eqz v5, :cond_4

    .line 3685
    iget-object v5, v1, Lcom/caverock/androidsvg/SVG$ClipPath;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 3688
    :cond_4
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 3689
    .local v5, "combinedPath":Landroid/graphics/Path;
    iget-object v6, v1, Lcom/caverock/androidsvg/SVG$ClipPath;->children:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 3691
    .local v7, "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    instance-of v8, v7, Lcom/caverock/androidsvg/SVG$SvgElement;

    if-nez v8, :cond_5

    .line 3692
    goto :goto_2

    .line 3693
    :cond_5
    move-object v8, v7

    check-cast v8, Lcom/caverock/androidsvg/SVG$SvgElement;

    invoke-direct {p0, v8, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->objectToPath(Lcom/caverock/androidsvg/SVG$SvgElement;Z)Landroid/graphics/Path;

    move-result-object v8

    .line 3694
    .local v8, "part":Landroid/graphics/Path;
    if-eqz v8, :cond_6

    .line 3695
    sget-object v9, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 3696
    .end local v7    # "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    .end local v8    # "part":Landroid/graphics/Path;
    :cond_6
    goto :goto_2

    .line 3699
    :cond_7
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 3701
    iget-object v3, v1, Lcom/caverock/androidsvg/SVG$ClipPath;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v3, :cond_8

    .line 3702
    invoke-direct {p0, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculatePathBounds(Landroid/graphics/Path;)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v3

    iput-object v3, v1, Lcom/caverock/androidsvg/SVG$ClipPath;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 3703
    :cond_8
    iget-object v3, v1, Lcom/caverock/androidsvg/SVG$ClipPath;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {p0, v1, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)Landroid/graphics/Path;

    move-result-object v3

    .line 3704
    .local v3, "clipClipPath":Landroid/graphics/Path;
    if-eqz v3, :cond_9

    .line 3705
    sget-object v6, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {v5, v3, v6}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 3708
    .end local v3    # "clipClipPath":Landroid/graphics/Path;
    :cond_9
    invoke-virtual {v5, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 3711
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 3713
    return-object v5
.end method

.method private calculateMarkerPositions(Lcom/caverock/androidsvg/SVG$Line;)Ljava/util/List;
    .locals 12
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Line;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$Line;",
            ")",
            "Ljava/util/List<",
            "Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;",
            ">;"
        }
    .end annotation

    .line 1253
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Line;->x1:Lcom/caverock/androidsvg/SVG$Length;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Line;->x1:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    move v6, v0

    .line 1254
    .local v6, "_x1":F
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Line;->y1:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Line;->y1:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    move v7, v0

    .line 1255
    .local v7, "_y1":F
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Line;->x2:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Line;->x2:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    move v8, v0

    .line 1256
    .local v8, "_x2":F
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Line;->y2:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Line;->y2:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    :cond_3
    move v9, v1

    .line 1258
    .local v9, "_y2":F
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v10, v0

    .line 1259
    .local v10, "markers":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;>;"
    new-instance v11, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    sub-float v4, v8, v6

    sub-float v5, v9, v7

    move-object v0, v11

    move-object v1, p0

    move v2, v6

    move v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFFF)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1260
    new-instance v11, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    sub-float v4, v8, v6

    sub-float v5, v9, v7

    move-object v0, v11

    move v2, v8

    move v3, v9

    invoke-direct/range {v0 .. v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFFF)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1261
    return-object v10
.end method

.method private calculateMarkerPositions(Lcom/caverock/androidsvg/SVG$PolyLine;)Ljava/util/List;
    .locals 18
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$PolyLine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/SVG$PolyLine;",
            ")",
            "Ljava/util/List<",
            "Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;",
            ">;"
        }
    .end annotation

    .line 1312
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    array-length v1, v1

    .line 1314
    .local v1, "numPoints":I
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 1315
    const/4 v2, 0x0

    return-object v2

    .line 1317
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1318
    .local v2, "markers":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;>;"
    new-instance v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    const/4 v10, 0x0

    aget v5, v3, v10

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    const/4 v11, 0x1

    aget v6, v3, v11

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v9

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFFF)V

    .line 1319
    .local v3, "lastPos":Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;
    const/4 v4, 0x0

    .local v4, "x":F
    const/4 v5, 0x0

    .line 1321
    .local v5, "y":F
    const/4 v6, 0x2

    .local v6, "i":I
    :goto_0
    if-ge v6, v1, :cond_1

    .line 1322
    iget-object v7, v0, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    aget v4, v7, v6

    .line 1323
    iget-object v7, v0, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    add-int/lit8 v8, v6, 0x1

    aget v5, v7, v8

    .line 1324
    invoke-virtual {v3, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->add(FF)V

    .line 1325
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1326
    new-instance v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    iget v8, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    sub-float v16, v4, v8

    iget v8, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    sub-float v17, v5, v8

    move-object v12, v7

    move-object/from16 v13, p0

    move v14, v4

    move v15, v5

    invoke-direct/range {v12 .. v17}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFFF)V

    move-object v3, v7

    .line 1321
    add-int/lit8 v6, v6, 0x2

    goto :goto_0

    .line 1330
    .end local v6    # "i":I
    :cond_1
    instance-of v6, v0, Lcom/caverock/androidsvg/SVG$Polygon;

    if-eqz v6, :cond_2

    .line 1331
    iget-object v6, v0, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    aget v6, v6, v10

    cmpl-float v6, v4, v6

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    aget v6, v6, v11

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_3

    .line 1332
    iget-object v6, v0, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    aget v4, v6, v10

    .line 1333
    iget-object v6, v0, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    aget v5, v6, v11

    .line 1334
    invoke-virtual {v3, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->add(FF)V

    .line 1335
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1338
    new-instance v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    iget v7, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    sub-float v16, v4, v7

    iget v7, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    sub-float v17, v5, v7

    move-object v12, v6

    move-object/from16 v13, p0

    move v14, v4

    move v15, v5

    invoke-direct/range {v12 .. v17}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFFF)V

    .line 1339
    .local v6, "newPos":Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-virtual {v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->add(Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)V

    .line 1340
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1341
    invoke-interface {v2, v10, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1342
    .end local v6    # "newPos":Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;
    goto :goto_1

    .line 1344
    :cond_2
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1346
    :cond_3
    :goto_1
    return-object v2
.end method

.method private calculatePathBounds(Landroid/graphics/Path;)Lcom/caverock/androidsvg/SVG$Box;
    .locals 6
    .param p1, "path"    # Landroid/graphics/Path;

    .line 1093
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 1094
    .local v0, "pathBounds":Landroid/graphics/RectF;
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 1095
    new-instance v1, Lcom/caverock/androidsvg/SVG$Box;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    return-object v1
.end method

.method private calculateTextWidth(Lcom/caverock/androidsvg/SVG$TextContainer;)F
    .locals 2
    .param p1, "parentTextObj"    # Lcom/caverock/androidsvg/SVG$TextContainer;

    .line 1720
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVGAndroidRenderer$1;)V

    .line 1721
    .local v0, "proc":Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;
    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 1722
    iget v1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextWidthCalculator;->x:F

    return v1
.end method

.method private calculateViewBoxTransform(Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;
    .locals 11
    .param p1, "viewPort"    # Lcom/caverock/androidsvg/SVG$Box;
    .param p2, "viewBox"    # Lcom/caverock/androidsvg/SVG$Box;
    .param p3, "positioning"    # Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 2015
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 2017
    .local v0, "m":Landroid/graphics/Matrix;
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/caverock/androidsvg/PreserveAspectRatio;->getAlignment()Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 2020
    :cond_0
    iget v1, p1, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget v2, p2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    div-float/2addr v1, v2

    .line 2021
    .local v1, "xScale":F
    iget v2, p1, Lcom/caverock/androidsvg/SVG$Box;->height:F

    iget v3, p2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    div-float/2addr v2, v3

    .line 2022
    .local v2, "yScale":F
    iget v3, p2, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    neg-float v3, v3

    .line 2023
    .local v3, "xOffset":F
    iget v4, p2, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    neg-float v4, v4

    .line 2026
    .local v4, "yOffset":F
    sget-object v5, Lcom/caverock/androidsvg/PreserveAspectRatio;->STRETCH:Lcom/caverock/androidsvg/PreserveAspectRatio;

    invoke-virtual {p3, v5}, Lcom/caverock/androidsvg/PreserveAspectRatio;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2028
    iget v5, p1, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget v6, p1, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 2029
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 2030
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 2031
    return-object v0

    .line 2036
    :cond_1
    invoke-virtual {p3}, Lcom/caverock/androidsvg/PreserveAspectRatio;->getScale()Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    move-result-object v5

    sget-object v6, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->slice:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    if-ne v5, v6, :cond_2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v5

    goto :goto_0

    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 2038
    .local v5, "scale":F
    :goto_0
    iget v6, p1, Lcom/caverock/androidsvg/SVG$Box;->width:F

    div-float/2addr v6, v5

    .line 2039
    .local v6, "imageW":F
    iget v7, p1, Lcom/caverock/androidsvg/SVG$Box;->height:F

    div-float/2addr v7, v5

    .line 2041
    .local v7, "imageH":F
    sget-object v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$1;->$SwitchMap$com$caverock$androidsvg$PreserveAspectRatio$Alignment:[I

    invoke-virtual {p3}, Lcom/caverock/androidsvg/PreserveAspectRatio;->getAlignment()Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v9

    invoke-virtual {v9}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v9

    aget v8, v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    packed-switch v8, :pswitch_data_0

    goto :goto_1

    .line 2051
    :pswitch_0
    iget v8, p2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    sub-float/2addr v8, v6

    sub-float/2addr v3, v8

    .line 2052
    goto :goto_1

    .line 2046
    :pswitch_1
    iget v8, p2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    sub-float/2addr v8, v6

    div-float/2addr v8, v9

    sub-float/2addr v3, v8

    .line 2047
    nop

    .line 2058
    :goto_1
    sget-object v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$1;->$SwitchMap$com$caverock$androidsvg$PreserveAspectRatio$Alignment:[I

    invoke-virtual {p3}, Lcom/caverock/androidsvg/PreserveAspectRatio;->getAlignment()Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v10

    invoke-virtual {v10}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v10

    aget v8, v8, v10

    packed-switch v8, :pswitch_data_1

    :pswitch_2
    goto :goto_2

    .line 2068
    :pswitch_3
    iget v8, p2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    sub-float/2addr v8, v7

    sub-float/2addr v4, v8

    .line 2069
    goto :goto_2

    .line 2063
    :pswitch_4
    iget v8, p2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    sub-float/2addr v8, v7

    div-float/2addr v8, v9

    sub-float/2addr v4, v8

    .line 2064
    nop

    .line 2075
    :goto_2
    iget v8, p1, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget v9, p1, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v0, v8, v9}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 2076
    invoke-virtual {v0, v5, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 2077
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 2078
    return-object v0

    .line 2018
    .end local v1    # "xScale":F
    .end local v2    # "yScale":F
    .end local v3    # "xOffset":F
    .end local v4    # "yOffset":F
    .end local v5    # "scale":F
    .end local v6    # "imageW":F
    .end local v7    # "imageH":F
    :cond_3
    :goto_3
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V
    .locals 1
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElement;

    .line 3629
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)V

    .line 3630
    return-void
.end method

.method private checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)V
    .locals 2
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElement;
    .param p2, "boundingBox"    # Lcom/caverock/androidsvg/SVG$Box;

    .line 3635
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3636
    return-void

    .line 3638
    :cond_0
    nop

    .line 3641
    invoke-direct {p0, p1, p2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)Landroid/graphics/Path;

    move-result-object v0

    .line 3642
    .local v0, "combinedPath":Landroid/graphics/Path;
    if-eqz v0, :cond_1

    .line 3643
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 3644
    .end local v0    # "combinedPath":Landroid/graphics/Path;
    :cond_1
    nop

    .line 3649
    return-void
.end method

.method private checkForClipPath_OldStyle(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)V
    .locals 8
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElement;
    .param p2, "boundingBox"    # Lcom/caverock/androidsvg/SVG$Box;

    .line 3842
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    .line 3843
    .local v0, "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    if-nez v0, :cond_0

    .line 3844
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ClipPath reference \'%s\' not found"

    invoke-static {v2, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3845
    return-void

    .line 3848
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/caverock/androidsvg/SVG$ClipPath;

    .line 3851
    .local v1, "clipPath":Lcom/caverock/androidsvg/SVG$ClipPath;
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$ClipPath;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 3852
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 3853
    return-void

    .line 3856
    :cond_1
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$ClipPath;->clipPathUnitsAreUser:Ljava/lang/Boolean;

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$ClipPath;->clipPathUnitsAreUser:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v3, v4

    :cond_3
    move v2, v3

    .line 3858
    .local v2, "userUnits":Z
    instance-of v3, p1, Lcom/caverock/androidsvg/SVG$Group;

    if-eqz v3, :cond_4

    if-nez v2, :cond_4

    .line 3859
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "<clipPath clipPathUnits=\"objectBoundingBox\"> is not supported when referenced from container elements (like %s)"

    invoke-static {v4, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3860
    return-void

    .line 3863
    :cond_4
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clipStatePush()V

    .line 3865
    if-nez v2, :cond_5

    .line 3867
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 3868
    .local v3, "m":Landroid/graphics/Matrix;
    iget v5, p2, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget v6, p2, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 3869
    iget v5, p2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget v6, p2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 3870
    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v5, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 3872
    .end local v3    # "m":Landroid/graphics/Matrix;
    :cond_5
    iget-object v3, v1, Lcom/caverock/androidsvg/SVG$ClipPath;->transform:Landroid/graphics/Matrix;

    if-eqz v3, :cond_6

    .line 3874
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v5, v1, Lcom/caverock/androidsvg/SVG$ClipPath;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v3, v5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 3879
    :cond_6
    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v3

    iput-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 3881
    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 3883
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 3884
    .local v3, "combinedPath":Landroid/graphics/Path;
    iget-object v5, v1, Lcom/caverock/androidsvg/SVG$ClipPath;->children:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 3886
    .local v6, "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    invoke-direct {p0, v6, v4, v3, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->addObjectToClip(Lcom/caverock/androidsvg/SVG$SvgObject;ZLandroid/graphics/Path;Landroid/graphics/Matrix;)V

    .line 3887
    .end local v6    # "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    goto :goto_0

    .line 3888
    :cond_7
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 3890
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clipStatePop()V

    .line 3891
    return-void
.end method

.method private checkForGradientsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V
    .locals 3
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElement;

    .line 3239
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$PaintReference;

    if-eqz v0, :cond_0

    .line 3240
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    check-cast v1, Lcom/caverock/androidsvg/SVG$PaintReference;

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->decodePaintReference(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$PaintReference;)V

    .line 3242
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$PaintReference;

    if-eqz v0, :cond_1

    .line 3243
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    check-cast v1, Lcom/caverock/androidsvg/SVG$PaintReference;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->decodePaintReference(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$PaintReference;)V

    .line 3245
    :cond_1
    return-void
.end method

.method private checkForImageDataURL(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .line 1970
    const-string v0, "data:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1971
    return-object v1

    .line 1972
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xe

    if-ge v0, v2, :cond_1

    .line 1973
    return-object v1

    .line 1975
    :cond_1
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1976
    .local v0, "comma":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    const/16 v2, 0xc

    if-ge v0, v2, :cond_2

    goto :goto_0

    .line 1978
    :cond_2
    add-int/lit8 v2, v0, -0x7

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, ";base64"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1979
    return-object v1

    .line 1980
    :cond_3
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 1981
    .local v1, "imageData":[B
    array-length v3, v1

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    .line 1977
    .end local v1    # "imageData":[B
    :cond_4
    :goto_0
    return-object v1
.end method

.method private checkGenericFont(Ljava/lang/String;Ljava/lang/Integer;Lcom/caverock/androidsvg/SVG$Style$FontStyle;)Landroid/graphics/Typeface;
    .locals 8
    .param p1, "fontName"    # Ljava/lang/String;
    .param p2, "fontWeight"    # Ljava/lang/Integer;
    .param p3, "fontStyle"    # Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    .line 2417
    const/4 v0, 0x0

    .line 2420
    .local v0, "font":Landroid/graphics/Typeface;
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Italic:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p3, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 2421
    .local v1, "italic":Z
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x1f4

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-le v4, v5, :cond_2

    if-eqz v1, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v2

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    move v4, v7

    goto :goto_1

    :cond_3
    move v4, v3

    .line 2424
    .local v4, "typefaceStyle":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_4
    goto :goto_2

    :sswitch_0
    const-string v2, "cursive"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v6

    goto :goto_3

    :sswitch_1
    const-string v2, "serif"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    goto :goto_3

    :sswitch_2
    const-string v2, "fantasy"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x4

    goto :goto_3

    :sswitch_3
    const-string v2, "monospace"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v7

    goto :goto_3

    :sswitch_4
    const-string v3, "sans-serif"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    :goto_2
    const/4 v2, -0x1

    :goto_3
    packed-switch v2, :pswitch_data_0

    goto :goto_4

    .line 2434
    :pswitch_0
    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_4

    .line 2432
    :pswitch_1
    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_4

    .line 2430
    :pswitch_2
    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_4

    .line 2428
    :pswitch_3
    sget-object v2, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_4

    .line 2426
    :pswitch_4
    sget-object v2, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 2436
    :goto_4
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x5b97f43d -> :sswitch_4
        -0x5559f3fd -> :sswitch_3
        -0x407a00da -> :sswitch_2
        0x684317d -> :sswitch_1
        0x432c41c5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkXMLSpaceAttribute(Lcom/caverock/androidsvg/SVG$SvgObject;)V
    .locals 3
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 458
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    if-nez v0, :cond_0

    .line 459
    return-void

    .line 461
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 462
    .local v0, "bobj":Lcom/caverock/androidsvg/SVG$SvgElementBase;
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->spacePreserve:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 463
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$SvgElementBase;->spacePreserve:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->spacePreserve:Z

    .line 464
    :cond_1
    return-void
.end method

.method private static clamp255(F)I
    .locals 2
    .param p0, "val"    # F

    .line 2443
    const/high16 v0, 0x43800000    # 256.0f

    mul-float/2addr v0, p0

    float-to-int v0, v0

    .line 2444
    .local v0, "i":I
    if-gez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    return v1
.end method

.method private clipStatePop()V
    .locals 1

    .line 3940
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 3942
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 3943
    return-void
.end method

.method private clipStatePush()V
    .locals 2

    .line 3930
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 3932
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3933
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {v0, p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 3934
    return-void
.end method

.method static colourWithOpacity(IF)I
    .locals 3
    .param p0, "colour"    # I
    .param p1, "opacity"    # F

    .line 2450
    shr-int/lit8 v0, p0, 0x18

    const/16 v1, 0xff

    and-int/2addr v0, v1

    .line 2451
    .local v0, "alpha":I
    int-to-float v2, v0

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 2452
    if-gez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    move v0, v1

    .line 2453
    shl-int/lit8 v1, v0, 0x18

    const v2, 0xffffff

    and-int/2addr v2, p0

    or-int/2addr v1, v2

    return v1
.end method

.method private static varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 551
    return-void
.end method

.method private decodePaintReference(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$PaintReference;)V
    .locals 5
    .param p1, "isFill"    # Z
    .param p2, "boundingBox"    # Lcom/caverock/androidsvg/SVG$Box;
    .param p3, "paintref"    # Lcom/caverock/androidsvg/SVG$PaintReference;

    .line 3253
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p3, Lcom/caverock/androidsvg/SVG$PaintReference;->href:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    .line 3254
    .local v0, "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    if-nez v0, :cond_3

    .line 3256
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    const-string v2, "Fill"

    goto :goto_0

    :cond_0
    const-string v2, "Stroke"

    :goto_0
    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-object v4, p3, Lcom/caverock/androidsvg/SVG$PaintReference;->href:Ljava/lang/String;

    aput-object v4, v1, v2

    const-string v2, "%s reference \'%s\' not found"

    invoke-static {v2, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3257
    iget-object v1, p3, Lcom/caverock/androidsvg/SVG$PaintReference;->fallback:Lcom/caverock/androidsvg/SVG$SvgPaint;

    if-eqz v1, :cond_1

    .line 3258
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, p3, Lcom/caverock/androidsvg/SVG$PaintReference;->fallback:Lcom/caverock/androidsvg/SVG$SvgPaint;

    invoke-direct {p0, v1, p1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setPaintColour(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/caverock/androidsvg/SVG$SvgPaint;)V

    goto :goto_1

    .line 3260
    :cond_1
    if-eqz p1, :cond_2

    .line 3261
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-boolean v3, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    goto :goto_1

    .line 3263
    :cond_2
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-boolean v3, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    .line 3265
    :goto_1
    return-void

    .line 3267
    :cond_3
    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    if-eqz v1, :cond_4

    .line 3268
    move-object v1, v0

    check-cast v1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    invoke-direct {p0, p1, p2, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makeLinearGradient(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$SvgLinearGradient;)V

    goto :goto_2

    .line 3269
    :cond_4
    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;

    if-eqz v1, :cond_5

    .line 3270
    move-object v1, v0

    check-cast v1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;

    invoke-direct {p0, p1, p2, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makeRadialGradient(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$SvgRadialGradient;)V

    goto :goto_2

    .line 3271
    :cond_5
    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$SolidColor;

    if-eqz v1, :cond_6

    .line 3272
    move-object v1, v0

    check-cast v1, Lcom/caverock/androidsvg/SVG$SolidColor;

    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setSolidColor(ZLcom/caverock/androidsvg/SVG$SolidColor;)V

    .line 3274
    :cond_6
    :goto_2
    return-void
.end method

.method private display()Z
    .locals 1

    .line 1987
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 1988
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 1989
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V
    .locals 2
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElement;
    .param p2, "path"    # Landroid/graphics/Path;

    .line 473
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$PaintReference;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    check-cast v1, Lcom/caverock/androidsvg/SVG$PaintReference;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$PaintReference;->href:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    .line 476
    .local v0, "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$Pattern;

    if-eqz v1, :cond_0

    .line 477
    move-object v1, v0

    check-cast v1, Lcom/caverock/androidsvg/SVG$Pattern;

    .line 478
    .local v1, "pattern":Lcom/caverock/androidsvg/SVG$Pattern;
    invoke-direct {p0, p1, p2, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillWithPattern(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;Lcom/caverock/androidsvg/SVG$Pattern;)V

    .line 479
    return-void

    .line 484
    .end local v0    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    .end local v1    # "pattern":Lcom/caverock/androidsvg/SVG$Pattern;
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 485
    return-void
.end method

.method private doStroke(Landroid/graphics/Path;)V
    .locals 6
    .param p1, "path"    # Landroid/graphics/Path;

    .line 493
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->vectorEffect:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;->NonScalingStroke:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    if-ne v0, v1, :cond_2

    .line 499
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 501
    .local v0, "currentMatrix":Landroid/graphics/Matrix;
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 502
    .local v1, "transformedPath":Landroid/graphics/Path;
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 504
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 507
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v2

    .line 508
    .local v2, "shader":Landroid/graphics/Shader;
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 509
    .local v3, "currentShaderMatrix":Landroid/graphics/Matrix;
    if-eqz v2, :cond_0

    .line 510
    invoke-virtual {v2, v3}, Landroid/graphics/Shader;->getLocalMatrix(Landroid/graphics/Matrix;)Z

    .line 511
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 512
    .local v4, "newShaderMatrix":Landroid/graphics/Matrix;
    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 513
    invoke-virtual {v2, v4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 517
    .end local v4    # "newShaderMatrix":Landroid/graphics/Matrix;
    :cond_0
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v1, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 520
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 522
    if-eqz v2, :cond_1

    .line 523
    invoke-virtual {v2, v3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 524
    .end local v0    # "currentMatrix":Landroid/graphics/Matrix;
    .end local v1    # "transformedPath":Landroid/graphics/Path;
    .end local v2    # "shader":Landroid/graphics/Shader;
    .end local v3    # "currentShaderMatrix":Landroid/graphics/Matrix;
    :cond_1
    goto :goto_0

    .line 527
    :cond_2
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 529
    :goto_0
    return-void
.end method

.method private dotProduct(FFFF)F
    .locals 2
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .line 3053
    mul-float v0, p1, p3

    mul-float v1, p2, p4

    add-float/2addr v0, v1

    return v0
.end method

.method private enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V
    .locals 5
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$TextContainer;
    .param p2, "textprocessor"    # Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;

    .line 1505
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1506
    return-void

    .line 1508
    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextContainer;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1509
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/caverock/androidsvg/SVG$SvgObject;>;"
    const/4 v1, 0x1

    .line 1511
    .local v1, "isFirstChild":Z
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1513
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 1515
    .local v2, "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    instance-of v3, v2, Lcom/caverock/androidsvg/SVG$TextSequence;

    if-eqz v3, :cond_1

    .line 1516
    move-object v3, v2

    check-cast v3, Lcom/caverock/androidsvg/SVG$TextSequence;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$TextSequence;->text:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v3, v1, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->textXMLSpaceTransform(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;->processText(Ljava/lang/String;)V

    goto :goto_1

    .line 1518
    :cond_1
    invoke-direct {p0, v2, p2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->processTextChild(Lcom/caverock/androidsvg/SVG$SvgObject;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 1520
    :goto_1
    const/4 v1, 0x0

    .line 1521
    .end local v2    # "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    goto :goto_0

    .line 1522
    :cond_2
    return-void
.end method

.method private static varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 543
    const-string v0, "SVGAndroidRenderer"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    return-void
.end method

.method private extractRawText(Lcom/caverock/androidsvg/SVG$TextContainer;Ljava/lang/StringBuilder;)V
    .locals 5
    .param p1, "parent"    # Lcom/caverock/androidsvg/SVG$TextContainer;
    .param p2, "str"    # Ljava/lang/StringBuilder;

    .line 1806
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextContainer;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1807
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/caverock/androidsvg/SVG$SvgObject;>;"
    const/4 v1, 0x1

    .line 1809
    .local v1, "isFirstChild":Z
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1811
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 1813
    .local v2, "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    instance-of v3, v2, Lcom/caverock/androidsvg/SVG$TextContainer;

    if-eqz v3, :cond_0

    .line 1814
    move-object v3, v2

    check-cast v3, Lcom/caverock/androidsvg/SVG$TextContainer;

    invoke-direct {p0, v3, p2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->extractRawText(Lcom/caverock/androidsvg/SVG$TextContainer;Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 1815
    :cond_0
    instance-of v3, v2, Lcom/caverock/androidsvg/SVG$TextSequence;

    if-eqz v3, :cond_1

    .line 1816
    move-object v3, v2

    check-cast v3, Lcom/caverock/androidsvg/SVG$TextSequence;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$TextSequence;->text:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v3, v1, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->textXMLSpaceTransform(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1818
    :cond_1
    :goto_1
    const/4 v1, 0x0

    .line 1819
    .end local v2    # "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    goto :goto_0

    .line 1820
    :cond_2
    return-void
.end method

.method private fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$GradientElement;Ljava/lang/String;)V
    .locals 4
    .param p1, "gradient"    # Lcom/caverock/androidsvg/SVG$GradientElement;
    .param p2, "href"    # Ljava/lang/String;

    .line 3506
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->document:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v0, p2}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    .line 3507
    .local v0, "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    if-nez v0, :cond_0

    .line 3509
    const-string v1, "Gradient reference \'%s\' not found"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3510
    return-void

    .line 3512
    :cond_0
    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$GradientElement;

    if-nez v1, :cond_1

    .line 3513
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Gradient href attributes must point to other gradient elements"

    invoke-static {v2, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3514
    return-void

    .line 3516
    :cond_1
    if-ne v0, p1, :cond_2

    .line 3517
    const-string v1, "Circular reference in gradient href attribute \'%s\'"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3518
    return-void

    .line 3521
    :cond_2
    move-object v1, v0

    check-cast v1, Lcom/caverock/androidsvg/SVG$GradientElement;

    .line 3523
    .local v1, "grRef":Lcom/caverock/androidsvg/SVG$GradientElement;
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    if-nez v2, :cond_3

    .line 3524
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientUnitsAreUser:Ljava/lang/Boolean;

    .line 3525
    :cond_3
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientTransform:Landroid/graphics/Matrix;

    if-nez v2, :cond_4

    .line 3526
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientTransform:Landroid/graphics/Matrix;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->gradientTransform:Landroid/graphics/Matrix;

    .line 3527
    :cond_4
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    if-nez v2, :cond_5

    .line 3528
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$GradientElement;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    .line 3529
    :cond_5
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3530
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$GradientElement;->children:Ljava/util/List;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$GradientElement;->children:Ljava/util/List;

    .line 3534
    :cond_6
    :try_start_0
    instance-of v2, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    if-eqz v2, :cond_7

    .line 3535
    move-object v2, p1

    check-cast v2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    move-object v3, v0

    check-cast v3, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    invoke-direct {p0, v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$SvgLinearGradient;Lcom/caverock/androidsvg/SVG$SvgLinearGradient;)V

    goto :goto_0

    .line 3537
    :cond_7
    move-object v2, p1

    check-cast v2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;

    move-object v3, v0

    check-cast v3, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;

    invoke-direct {p0, v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$SvgRadialGradient;Lcom/caverock/androidsvg/SVG$SvgRadialGradient;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3540
    :catch_0
    move-exception v2

    :goto_0
    nop

    .line 3542
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$GradientElement;->href:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 3543
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$GradientElement;->href:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$GradientElement;Ljava/lang/String;)V

    .line 3544
    :cond_8
    return-void
.end method

.method private fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$SvgLinearGradient;Lcom/caverock/androidsvg/SVG$SvgLinearGradient;)V
    .locals 1
    .param p1, "gradient"    # Lcom/caverock/androidsvg/SVG$SvgLinearGradient;
    .param p2, "grRef"    # Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    .line 3549
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_0

    .line 3550
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    .line 3551
    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_1

    .line 3552
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    .line 3553
    :cond_1
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_2

    .line 3554
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    .line 3555
    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_3

    .line 3556
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    .line 3557
    :cond_3
    return-void
.end method

.method private fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$SvgRadialGradient;Lcom/caverock/androidsvg/SVG$SvgRadialGradient;)V
    .locals 1
    .param p1, "gradient"    # Lcom/caverock/androidsvg/SVG$SvgRadialGradient;
    .param p2, "grRef"    # Lcom/caverock/androidsvg/SVG$SvgRadialGradient;

    .line 3562
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_0

    .line 3563
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    .line 3564
    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_1

    .line 3565
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    .line 3566
    :cond_1
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_2

    .line 3567
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    .line 3568
    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fx:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_3

    .line 3569
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fx:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fx:Lcom/caverock/androidsvg/SVG$Length;

    .line 3570
    :cond_3
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fy:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v0, :cond_4

    .line 3571
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fy:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->fy:Lcom/caverock/androidsvg/SVG$Length;

    .line 3572
    :cond_4
    return-void
.end method

.method private fillInChainedPatternFields(Lcom/caverock/androidsvg/SVG$Pattern;Ljava/lang/String;)V
    .locals 3
    .param p1, "pattern"    # Lcom/caverock/androidsvg/SVG$Pattern;
    .param p2, "href"    # Ljava/lang/String;

    .line 4464
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Pattern;->document:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v0, p2}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    .line 4465
    .local v0, "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    if-nez v0, :cond_0

    .line 4467
    const-string v1, "Pattern reference \'%s\' not found"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4468
    return-void

    .line 4470
    :cond_0
    instance-of v1, v0, Lcom/caverock/androidsvg/SVG$Pattern;

    if-nez v1, :cond_1

    .line 4471
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Pattern href attributes must point to other pattern elements"

    invoke-static {v2, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4472
    return-void

    .line 4474
    :cond_1
    if-ne v0, p1, :cond_2

    .line 4475
    const-string v1, "Circular reference in pattern href attribute \'%s\'"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4476
    return-void

    .line 4479
    :cond_2
    move-object v1, v0

    check-cast v1, Lcom/caverock/androidsvg/SVG$Pattern;

    .line 4481
    .local v1, "pRef":Lcom/caverock/androidsvg/SVG$Pattern;
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    if-nez v2, :cond_3

    .line 4482
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    .line 4483
    :cond_3
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    if-nez v2, :cond_4

    .line 4484
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    .line 4485
    :cond_4
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    if-nez v2, :cond_5

    .line 4486
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    .line 4487
    :cond_5
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v2, :cond_6

    .line 4488
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    .line 4489
    :cond_6
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v2, :cond_7

    .line 4490
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    .line 4491
    :cond_7
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v2, :cond_8

    .line 4492
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    .line 4493
    :cond_8
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v2, :cond_9

    .line 4494
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 4496
    :cond_9
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 4497
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Pattern;->children:Ljava/util/List;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->children:Ljava/util/List;

    .line 4498
    :cond_a
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v2, :cond_b

    .line 4499
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Pattern;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 4500
    :cond_b
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-nez v2, :cond_c

    .line 4501
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Pattern;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    iput-object v2, p1, Lcom/caverock/androidsvg/SVG$Pattern;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 4504
    :cond_c
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Pattern;->href:Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 4505
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Pattern;->href:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedPatternFields(Lcom/caverock/androidsvg/SVG$Pattern;Ljava/lang/String;)V

    .line 4506
    :cond_d
    return-void
.end method

.method private fillWithPattern(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;Lcom/caverock/androidsvg/SVG$Pattern;)V
    .locals 26
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElement;
    .param p2, "path"    # Landroid/graphics/Path;
    .param p3, "pattern"    # Lcom/caverock/androidsvg/SVG$Pattern;

    .line 4325
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    iget-object v3, v2, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/caverock/androidsvg/SVG$Pattern;->patternUnitsAreUser:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    .line 4329
    .local v3, "patternUnitsAreUser":Z
    :goto_0
    iget-object v6, v2, Lcom/caverock/androidsvg/SVG$Pattern;->href:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 4330
    iget-object v6, v2, Lcom/caverock/androidsvg/SVG$Pattern;->href:Ljava/lang/String;

    invoke-direct {v0, v2, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedPatternFields(Lcom/caverock/androidsvg/SVG$Pattern;Ljava/lang/String;)V

    .line 4332
    :cond_1
    const/4 v6, 0x0

    if-eqz v3, :cond_6

    .line 4334
    iget-object v7, v2, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v7, :cond_2

    iget-object v7, v2, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v7, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v7

    goto :goto_1

    :cond_2
    move v7, v6

    .line 4335
    .local v7, "x":F
    :goto_1
    iget-object v8, v2, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v8, :cond_3

    iget-object v8, v2, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v8, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v8

    goto :goto_2

    :cond_3
    move v8, v6

    .line 4336
    .local v8, "y":F
    :goto_2
    iget-object v9, v2, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v9, :cond_4

    iget-object v9, v2, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v9, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v9

    goto :goto_3

    :cond_4
    move v9, v6

    .line 4337
    .local v9, "w":F
    :goto_3
    iget-object v10, v2, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v10, :cond_5

    iget-object v10, v2, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v10, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v10

    goto :goto_4

    :cond_5
    move v10, v6

    .local v10, "h":F
    :goto_4
    goto :goto_9

    .line 4342
    .end local v7    # "x":F
    .end local v8    # "y":F
    .end local v9    # "w":F
    .end local v10    # "h":F
    :cond_6
    iget-object v7, v2, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v7, :cond_7

    iget-object v7, v2, Lcom/caverock/androidsvg/SVG$Pattern;->x:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v7, v0, v8}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v7

    goto :goto_5

    :cond_7
    move v7, v6

    .line 4343
    .restart local v7    # "x":F
    :goto_5
    iget-object v9, v2, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v9, :cond_8

    iget-object v9, v2, Lcom/caverock/androidsvg/SVG$Pattern;->y:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v9, v0, v8}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v9

    goto :goto_6

    :cond_8
    move v9, v6

    .line 4344
    .local v9, "y":F
    :goto_6
    iget-object v10, v2, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v10, :cond_9

    iget-object v10, v2, Lcom/caverock/androidsvg/SVG$Pattern;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v10, v0, v8}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v10

    goto :goto_7

    :cond_9
    move v10, v6

    .line 4345
    .local v10, "w":F
    :goto_7
    iget-object v11, v2, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v11, :cond_a

    iget-object v11, v2, Lcom/caverock/androidsvg/SVG$Pattern;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v11, v0, v8}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v8

    goto :goto_8

    :cond_a
    move v8, v6

    .line 4346
    .local v8, "h":F
    :goto_8
    iget-object v11, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v11, v11, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget-object v12, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v12, v12, Lcom/caverock/androidsvg/SVG$Box;->width:F

    mul-float/2addr v12, v7

    add-float v7, v11, v12

    .line 4347
    iget-object v11, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v11, v11, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    iget-object v12, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v12, v12, Lcom/caverock/androidsvg/SVG$Box;->height:F

    mul-float/2addr v12, v9

    add-float v9, v11, v12

    .line 4348
    iget-object v11, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v11, v11, Lcom/caverock/androidsvg/SVG$Box;->width:F

    mul-float/2addr v10, v11

    .line 4349
    iget-object v11, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v11, v11, Lcom/caverock/androidsvg/SVG$Box;->height:F

    mul-float/2addr v8, v11

    move/from16 v25, v10

    move v10, v8

    move v8, v9

    move/from16 v9, v25

    .line 4351
    .local v8, "y":F
    .local v9, "w":F
    .local v10, "h":F
    :goto_9
    cmpl-float v11, v9, v6

    if-eqz v11, :cond_1d

    cmpl-float v11, v10, v6

    if-nez v11, :cond_b

    move/from16 v20, v3

    move/from16 v24, v7

    goto/16 :goto_14

    .line 4355
    :cond_b
    iget-object v11, v2, Lcom/caverock/androidsvg/SVG$Pattern;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-eqz v11, :cond_c

    iget-object v11, v2, Lcom/caverock/androidsvg/SVG$Pattern;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    goto :goto_a

    :cond_c
    sget-object v11, Lcom/caverock/androidsvg/PreserveAspectRatio;->LETTERBOX:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 4358
    .local v11, "positioning":Lcom/caverock/androidsvg/PreserveAspectRatio;
    :goto_a
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 4360
    iget-object v12, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v13, p2

    invoke-virtual {v12, v13}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 4363
    new-instance v12, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {v12, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;)V

    .line 4364
    .local v12, "baseState":Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    invoke-static {}, Lcom/caverock/androidsvg/SVG$Style;->getDefaultStyle()Lcom/caverock/androidsvg/SVG$Style;

    move-result-object v14

    invoke-direct {v0, v12, v14}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V

    .line 4365
    iget-object v14, v12, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    iput-object v15, v14, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    .line 4368
    invoke-direct {v0, v2, v12}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v14

    iput-object v14, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 4371
    iget-object v14, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 4373
    .local v14, "patternArea":Lcom/caverock/androidsvg/SVG$Box;
    iget-object v15, v2, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    if-eqz v15, :cond_13

    .line 4375
    iget-object v15, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v6, v2, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    invoke-virtual {v15, v6}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 4379
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 4380
    .local v6, "inverse":Landroid/graphics/Matrix;
    iget-object v15, v2, Lcom/caverock/androidsvg/SVG$Pattern;->patternTransform:Landroid/graphics/Matrix;

    invoke-virtual {v15, v6}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v15

    if-eqz v15, :cond_12

    .line 4381
    const/16 v15, 0x8

    new-array v15, v15, [F

    iget-object v5, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v5, v5, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    aput v5, v15, v4

    iget-object v5, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v5, v5, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    const/16 v17, 0x1

    aput v5, v15, v17

    iget-object v5, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 4382
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v5

    const/16 v18, 0x2

    aput v5, v15, v18

    iget-object v5, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v5, v5, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    const/16 v18, 0x3

    aput v5, v15, v18

    iget-object v5, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 4383
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v5

    const/16 v18, 0x4

    aput v5, v15, v18

    iget-object v5, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v5

    const/16 v18, 0x5

    aput v5, v15, v18

    iget-object v5, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v5, v5, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    const/4 v4, 0x6

    aput v5, v15, v4

    iget-object v5, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 4384
    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v5

    const/16 v19, 0x7

    aput v5, v15, v19

    move-object v5, v15

    .line 4385
    .local v5, "pts":[F
    invoke-virtual {v6, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 4387
    new-instance v15, Landroid/graphics/RectF;

    const/16 v18, 0x0

    aget v4, v5, v18

    move/from16 v20, v3

    const/16 v17, 0x1

    .end local v3    # "patternUnitsAreUser":Z
    .local v20, "patternUnitsAreUser":Z
    aget v3, v5, v17

    move-object/from16 v21, v6

    .end local v6    # "inverse":Landroid/graphics/Matrix;
    .local v21, "inverse":Landroid/graphics/Matrix;
    aget v6, v5, v18

    move-object/from16 v22, v12

    .end local v12    # "baseState":Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    .local v22, "baseState":Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    aget v12, v5, v17

    invoke-direct {v15, v4, v3, v6, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v3, v15

    .line 4388
    .local v3, "rect":Landroid/graphics/RectF;
    const/4 v4, 0x2

    .local v4, "i":I
    :goto_b
    const/4 v6, 0x6

    if-gt v4, v6, :cond_11

    .line 4389
    aget v12, v5, v4

    iget v15, v3, Landroid/graphics/RectF;->left:F

    cmpg-float v12, v12, v15

    if-gez v12, :cond_d

    aget v12, v5, v4

    iput v12, v3, Landroid/graphics/RectF;->left:F

    .line 4390
    :cond_d
    aget v12, v5, v4

    iget v15, v3, Landroid/graphics/RectF;->right:F

    cmpl-float v12, v12, v15

    if-lez v12, :cond_e

    aget v12, v5, v4

    iput v12, v3, Landroid/graphics/RectF;->right:F

    .line 4391
    :cond_e
    add-int/lit8 v12, v4, 0x1

    aget v12, v5, v12

    iget v15, v3, Landroid/graphics/RectF;->top:F

    cmpg-float v12, v12, v15

    if-gez v12, :cond_f

    add-int/lit8 v12, v4, 0x1

    aget v12, v5, v12

    iput v12, v3, Landroid/graphics/RectF;->top:F

    .line 4392
    :cond_f
    add-int/lit8 v12, v4, 0x1

    aget v12, v5, v12

    iget v15, v3, Landroid/graphics/RectF;->bottom:F

    cmpl-float v12, v12, v15

    if-lez v12, :cond_10

    add-int/lit8 v12, v4, 0x1

    aget v12, v5, v12

    iput v12, v3, Landroid/graphics/RectF;->bottom:F

    .line 4388
    :cond_10
    add-int/lit8 v4, v4, 0x2

    goto :goto_b

    .line 4394
    .end local v4    # "i":I
    :cond_11
    new-instance v4, Lcom/caverock/androidsvg/SVG$Box;

    iget v6, v3, Landroid/graphics/RectF;->left:F

    iget v12, v3, Landroid/graphics/RectF;->top:F

    iget v15, v3, Landroid/graphics/RectF;->right:F

    move-object/from16 v19, v5

    .end local v5    # "pts":[F
    .local v19, "pts":[F
    iget v5, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v15, v5

    iget v5, v3, Landroid/graphics/RectF;->bottom:F

    iget v13, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v13

    invoke-direct {v4, v6, v12, v15, v5}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    move-object v14, v4

    goto :goto_c

    .line 4380
    .end local v19    # "pts":[F
    .end local v20    # "patternUnitsAreUser":Z
    .end local v21    # "inverse":Landroid/graphics/Matrix;
    .end local v22    # "baseState":Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    .local v3, "patternUnitsAreUser":Z
    .restart local v6    # "inverse":Landroid/graphics/Matrix;
    .restart local v12    # "baseState":Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    :cond_12
    move/from16 v20, v3

    move/from16 v18, v4

    move-object/from16 v21, v6

    move-object/from16 v22, v12

    const/16 v17, 0x1

    .end local v3    # "patternUnitsAreUser":Z
    .end local v6    # "inverse":Landroid/graphics/Matrix;
    .end local v12    # "baseState":Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    .restart local v20    # "patternUnitsAreUser":Z
    .restart local v21    # "inverse":Landroid/graphics/Matrix;
    .restart local v22    # "baseState":Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    goto :goto_c

    .line 4373
    .end local v20    # "patternUnitsAreUser":Z
    .end local v21    # "inverse":Landroid/graphics/Matrix;
    .end local v22    # "baseState":Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    .restart local v3    # "patternUnitsAreUser":Z
    .restart local v12    # "baseState":Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    :cond_13
    move/from16 v20, v3

    move/from16 v18, v4

    move-object/from16 v22, v12

    const/16 v17, 0x1

    .line 4399
    .end local v3    # "patternUnitsAreUser":Z
    .end local v12    # "baseState":Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    .restart local v20    # "patternUnitsAreUser":Z
    .restart local v22    # "baseState":Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    :goto_c
    iget v3, v14, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    sub-float/2addr v3, v7

    div-float/2addr v3, v9

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v9

    add-float/2addr v3, v7

    .line 4400
    .local v3, "originX":F
    iget v4, v14, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    sub-float/2addr v4, v8

    div-float/2addr v4, v10

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v10

    add-float/2addr v4, v8

    .line 4403
    .local v4, "originY":F
    invoke-virtual {v14}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v5

    .line 4404
    .local v5, "right":F
    invoke-virtual {v14}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v6

    .line 4405
    .local v6, "bottom":F
    new-instance v12, Lcom/caverock/androidsvg/SVG$Box;

    const/4 v13, 0x0

    invoke-direct {v12, v13, v13, v9, v10}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    .line 4407
    .local v12, "stepViewBox":Lcom/caverock/androidsvg/SVG$Box;
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v13

    .line 4409
    .local v13, "compositing":Z
    move v15, v4

    .local v15, "stepY":F
    :goto_d
    cmpg-float v16, v15, v6

    if-gez v16, :cond_1b

    .line 4411
    move/from16 v16, v3

    move/from16 v19, v3

    .local v3, "stepX":F
    .local v19, "originX":F
    :goto_e
    cmpg-float v16, v3, v5

    if-gez v16, :cond_1a

    .line 4413
    iput v3, v12, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    .line 4414
    iput v15, v12, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    .line 4417
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 4420
    move/from16 v16, v4

    .end local v4    # "originY":F
    .local v16, "originY":F
    iget-object v4, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_14

    .line 4421
    iget v4, v12, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    move/from16 v21, v5

    .end local v5    # "right":F
    .local v21, "right":F
    iget v5, v12, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    move/from16 v23, v6

    .end local v6    # "bottom":F
    .local v23, "bottom":F
    iget v6, v12, Lcom/caverock/androidsvg/SVG$Box;->width:F

    move/from16 v24, v7

    .end local v7    # "x":F
    .local v24, "x":F
    iget v7, v12, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setClipRect(FFFF)V

    goto :goto_f

    .line 4420
    .end local v21    # "right":F
    .end local v23    # "bottom":F
    .end local v24    # "x":F
    .restart local v5    # "right":F
    .restart local v6    # "bottom":F
    .restart local v7    # "x":F
    :cond_14
    move/from16 v21, v5

    move/from16 v23, v6

    move/from16 v24, v7

    .line 4424
    .end local v5    # "right":F
    .end local v6    # "bottom":F
    .end local v7    # "x":F
    .restart local v21    # "right":F
    .restart local v23    # "bottom":F
    .restart local v24    # "x":F
    :goto_f
    iget-object v4, v2, Lcom/caverock/androidsvg/SVG$Pattern;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v4, :cond_15

    .line 4426
    iget-object v4, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v5, v2, Lcom/caverock/androidsvg/SVG$Pattern;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {v0, v12, v5, v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateViewBoxTransform(Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_12

    .line 4430
    :cond_15
    iget-object v4, v2, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    if-eqz v4, :cond_17

    iget-object v4, v2, Lcom/caverock/androidsvg/SVG$Pattern;->patternContentUnitsAreUser:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_16

    goto :goto_10

    :cond_16
    move/from16 v4, v18

    goto :goto_11

    :cond_17
    :goto_10
    move/from16 v4, v17

    .line 4432
    .local v4, "patternContentUnitsAreUser":Z
    :goto_11
    iget-object v5, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v5, v3, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4433
    if-nez v4, :cond_18

    .line 4434
    iget-object v5, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v6, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v6, v6, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget-object v7, v1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v7, v7, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 4440
    .end local v4    # "patternContentUnitsAreUser":Z
    :cond_18
    :goto_12
    iget-object v4, v2, Lcom/caverock/androidsvg/SVG$Pattern;->children:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 4441
    .local v5, "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {v0, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 4442
    .end local v5    # "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    goto :goto_13

    .line 4445
    :cond_19
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 4411
    add-float/2addr v3, v9

    move/from16 v4, v16

    move/from16 v5, v21

    move/from16 v6, v23

    move/from16 v7, v24

    goto/16 :goto_e

    .end local v16    # "originY":F
    .end local v21    # "right":F
    .end local v23    # "bottom":F
    .end local v24    # "x":F
    .local v4, "originY":F
    .local v5, "right":F
    .restart local v6    # "bottom":F
    .restart local v7    # "x":F
    :cond_1a
    move/from16 v16, v4

    move/from16 v21, v5

    move/from16 v23, v6

    move/from16 v24, v7

    .line 4409
    .end local v3    # "stepX":F
    .end local v4    # "originY":F
    .end local v5    # "right":F
    .end local v6    # "bottom":F
    .end local v7    # "x":F
    .restart local v16    # "originY":F
    .restart local v21    # "right":F
    .restart local v23    # "bottom":F
    .restart local v24    # "x":F
    add-float/2addr v15, v10

    move/from16 v3, v19

    goto/16 :goto_d

    .end local v16    # "originY":F
    .end local v19    # "originX":F
    .end local v21    # "right":F
    .end local v23    # "bottom":F
    .end local v24    # "x":F
    .local v3, "originX":F
    .restart local v4    # "originY":F
    .restart local v5    # "right":F
    .restart local v6    # "bottom":F
    .restart local v7    # "x":F
    :cond_1b
    move/from16 v19, v3

    move/from16 v16, v4

    move/from16 v21, v5

    move/from16 v23, v6

    move/from16 v24, v7

    .line 4449
    .end local v3    # "originX":F
    .end local v4    # "originY":F
    .end local v5    # "right":F
    .end local v6    # "bottom":F
    .end local v7    # "x":F
    .end local v15    # "stepY":F
    .restart local v16    # "originY":F
    .restart local v19    # "originX":F
    .restart local v21    # "right":F
    .restart local v23    # "bottom":F
    .restart local v24    # "x":F
    if-eqz v13, :cond_1c

    .line 4450
    invoke-direct {v0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 4453
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 4454
    return-void

    .line 4351
    .end local v11    # "positioning":Lcom/caverock/androidsvg/PreserveAspectRatio;
    .end local v12    # "stepViewBox":Lcom/caverock/androidsvg/SVG$Box;
    .end local v13    # "compositing":Z
    .end local v14    # "patternArea":Lcom/caverock/androidsvg/SVG$Box;
    .end local v16    # "originY":F
    .end local v19    # "originX":F
    .end local v20    # "patternUnitsAreUser":Z
    .end local v21    # "right":F
    .end local v22    # "baseState":Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    .end local v23    # "bottom":F
    .end local v24    # "x":F
    .local v3, "patternUnitsAreUser":Z
    .restart local v7    # "x":F
    :cond_1d
    move/from16 v20, v3

    move/from16 v24, v7

    .line 4352
    .end local v3    # "patternUnitsAreUser":Z
    .end local v7    # "x":F
    .restart local v20    # "patternUnitsAreUser":Z
    .restart local v24    # "x":F
    :goto_14
    return-void
.end method

.method private findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    .locals 2
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 3195
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;)V

    .line 3196
    .local v0, "newState":Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    invoke-static {}, Lcom/caverock/androidsvg/SVG$Style;->getDefaultStyle()Lcom/caverock/androidsvg/SVG$Style;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V

    .line 3197
    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v1

    return-object v1
.end method

.method private findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    .locals 3
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgObject;
    .param p2, "newState"    # Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 3203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3207
    .local v0, "ancestors":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/SVG$SvgElementBase;>;"
    :goto_0
    instance-of v1, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    if-eqz v1, :cond_0

    .line 3208
    const/4 v1, 0x0

    move-object v2, p1

    check-cast v2, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3210
    :cond_0
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v1, :cond_2

    .line 3211
    nop

    .line 3216
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 3217
    .local v2, "ancestor":Lcom/caverock/androidsvg/SVG$SvgElementBase;
    invoke-direct {p0, p2, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .end local v2    # "ancestor":Lcom/caverock/androidsvg/SVG$SvgElementBase;
    goto :goto_1

    .line 3220
    :cond_1
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v1, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 3221
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v1, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 3223
    return-object p2

    .line 3212
    :cond_2
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    move-object p1, v1

    check-cast p1, Lcom/caverock/androidsvg/SVG$SvgObject;

    goto :goto_0
.end method

.method private getAnchorPosition()Lcom/caverock/androidsvg/SVG$Style$TextAnchor;
    .locals 2

    .line 1446
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->direction:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$TextDirection;->LTR:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 1450
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->End:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    :goto_0
    return-object v0

    .line 1447
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    return-object v0
.end method

.method private getClipRuleFromState()Landroid/graphics/Path$FillType;
    .locals 2

    .line 3948
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->clipRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->clipRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$FillRule;->EvenOdd:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    if-ne v0, v1, :cond_0

    .line 3949
    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    return-object v0

    .line 3951
    :cond_0
    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    return-object v0
.end method

.method private getFillTypeFromState()Landroid/graphics/Path$FillType;
    .locals 2

    .line 2459
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fillRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fillRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$FillRule;->EvenOdd:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    if-ne v0, v1, :cond_0

    .line 2460
    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    return-object v0

    .line 2462
    :cond_0
    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    return-object v0
.end method

.method private static declared-synchronized initialiseSupportedFeaturesMap()V
    .locals 3

    const-class v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    monitor-enter v0

    .line 900
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    .line 919
    const-string v2, "Structure"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 920
    sget-object v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v2, "BasicStructure"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 922
    sget-object v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v2, "ConditionalProcessing"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 923
    sget-object v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v2, "Image"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 924
    sget-object v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v2, "Style"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 925
    sget-object v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v2, "ViewportAttribute"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 926
    sget-object v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v2, "Shape"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 928
    sget-object v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v2, "BasicText"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 929
    sget-object v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v2, "PaintAttribute"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 930
    sget-object v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v2, "BasicPaintAttribute"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 931
    sget-object v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v2, "OpacityAttribute"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 933
    sget-object v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v2, "BasicGraphicsAttribute"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 934
    sget-object v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v2, "Marker"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 936
    sget-object v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v2, "Gradient"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 937
    sget-object v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v2, "Pattern"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 938
    sget-object v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v2, "Clip"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 939
    sget-object v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v2, "BasicClip"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 940
    sget-object v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v2, "Mask"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 950
    sget-object v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    const-string v2, "View"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 969
    monitor-exit v0

    return-void

    .line 899
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z
    .locals 4
    .param p1, "style"    # Lcom/caverock/androidsvg/SVG$Style;
    .param p2, "flag"    # J

    .line 2084
    iget-wide v0, p1, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    and-long/2addr v0, p2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private makeLinearGradient(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$SvgLinearGradient;)V
    .locals 24
    .param p1, "isFill"    # Z
    .param p2, "boundingBox"    # Lcom/caverock/androidsvg/SVG$Box;
    .param p3, "gradient"    # Lcom/caverock/androidsvg/SVG$SvgLinearGradient;

    .line 3279
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget-object v3, v2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->href:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 3280
    iget-object v3, v2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->href:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$GradientElement;Ljava/lang/String;)V

    .line 3282
    :cond_0
    iget-object v3, v2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->gradientUnitsAreUser:Ljava/lang/Boolean;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->gradientUnitsAreUser:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    .line 3283
    .local v3, "userUnits":Z
    :goto_0
    iget-object v6, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    if-eqz p1, :cond_2

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    goto :goto_1

    :cond_2
    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    .line 3286
    .local v6, "paint":Landroid/graphics/Paint;
    :goto_1
    if-eqz v3, :cond_7

    .line 3288
    invoke-virtual/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getCurrentViewPortInUserUnits()Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v8

    .line 3289
    .local v8, "viewPortUser":Lcom/caverock/androidsvg/SVG$Box;
    iget-object v9, v2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v9, :cond_3

    iget-object v9, v2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v9, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v9

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    .line 3290
    .local v9, "_x1":F
    :goto_2
    iget-object v10, v2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v10, :cond_4

    iget-object v10, v2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v10, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v10

    goto :goto_3

    :cond_4
    const/4 v10, 0x0

    .line 3291
    .local v10, "_y1":F
    :goto_3
    iget-object v11, v2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v11, :cond_5

    iget-object v11, v2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v11, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v11

    goto :goto_4

    :cond_5
    iget v11, v8, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 3292
    .local v11, "_x2":F
    :goto_4
    iget-object v12, v2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v12, :cond_6

    iget-object v12, v2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v12, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v12

    goto :goto_5

    :cond_6
    const/4 v12, 0x0

    :goto_5
    move v8, v12

    .line 3293
    .local v8, "_y2":F
    goto :goto_a

    .line 3296
    .end local v8    # "_y2":F
    .end local v9    # "_x1":F
    .end local v10    # "_y1":F
    .end local v11    # "_x2":F
    :cond_7
    iget-object v8, v2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v8, :cond_8

    iget-object v8, v2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x1:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v8, v0, v9}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v8

    goto :goto_6

    :cond_8
    const/4 v8, 0x0

    .line 3297
    .local v8, "_x1":F
    :goto_6
    iget-object v10, v2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v10, :cond_9

    iget-object v10, v2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y1:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v10, v0, v9}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v10

    goto :goto_7

    :cond_9
    const/4 v10, 0x0

    .line 3298
    .restart local v10    # "_y1":F
    :goto_7
    iget-object v11, v2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v11, :cond_a

    iget-object v11, v2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->x2:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v11, v0, v9}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v11

    goto :goto_8

    :cond_a
    move v11, v9

    .line 3299
    .restart local v11    # "_x2":F
    :goto_8
    iget-object v12, v2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v12, :cond_b

    iget-object v12, v2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->y2:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v12, v0, v9}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v9

    goto :goto_9

    :cond_b
    const/4 v9, 0x0

    :goto_9
    move/from16 v23, v9

    move v9, v8

    move/from16 v8, v23

    .line 3303
    .local v8, "_y2":F
    .restart local v9    # "_x1":F
    :goto_a
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 3306
    invoke-direct {v0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v12

    iput-object v12, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 3309
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    move-object v15, v12

    .line 3310
    .local v15, "m":Landroid/graphics/Matrix;
    if-nez v3, :cond_c

    .line 3312
    iget v12, v1, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget v13, v1, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v15, v12, v13}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 3313
    iget v12, v1, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget v13, v1, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-virtual {v15, v12, v13}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 3315
    :cond_c
    iget-object v12, v2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->gradientTransform:Landroid/graphics/Matrix;

    if-eqz v12, :cond_d

    .line 3317
    iget-object v12, v2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->gradientTransform:Landroid/graphics/Matrix;

    invoke-virtual {v15, v12}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 3321
    :cond_d
    iget-object v12, v2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->children:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    .line 3322
    .local v14, "numStops":I
    if-nez v14, :cond_f

    .line 3324
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 3325
    if-eqz p1, :cond_e

    .line 3326
    iget-object v5, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-boolean v4, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    goto :goto_b

    .line 3328
    :cond_e
    iget-object v5, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-boolean v4, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    .line 3329
    :goto_b
    return-void

    .line 3332
    :cond_f
    new-array v4, v14, [I

    .line 3333
    .local v4, "colours":[I
    new-array v13, v14, [F

    .line 3334
    .local v13, "positions":[F
    const/4 v12, 0x0

    .line 3335
    .local v12, "i":I
    const/high16 v16, -0x40800000    # -1.0f

    .line 3336
    .local v16, "lastOffset":F
    iget-object v7, v2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->children:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move/from16 v20, v12

    move/from16 v21, v16

    .end local v12    # "i":I
    .end local v16    # "lastOffset":F
    .local v20, "i":I
    .local v21, "lastOffset":F
    :goto_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_14

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 3338
    .local v12, "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    move-object v5, v12

    check-cast v5, Lcom/caverock/androidsvg/SVG$Stop;

    .line 3339
    .local v5, "stop":Lcom/caverock/androidsvg/SVG$Stop;
    iget-object v1, v5, Lcom/caverock/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    if-eqz v1, :cond_10

    iget-object v1, v5, Lcom/caverock/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_d

    :cond_10
    const/4 v1, 0x0

    .line 3340
    .local v1, "offset":F
    :goto_d
    if-eqz v20, :cond_12

    cmpl-float v18, v1, v21

    if-ltz v18, :cond_11

    goto :goto_e

    .line 3346
    :cond_11
    aput v21, v13, v20

    goto :goto_f

    .line 3341
    :cond_12
    :goto_e
    aput v1, v13, v20

    .line 3342
    move/from16 v18, v1

    move/from16 v21, v18

    .line 3349
    :goto_f
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 3351
    move/from16 v18, v1

    .end local v1    # "offset":F
    .local v18, "offset":F
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {v0, v1, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 3352
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    check-cast v1, Lcom/caverock/androidsvg/SVG$Colour;

    .line 3353
    .local v1, "col":Lcom/caverock/androidsvg/SVG$Colour;
    if-nez v1, :cond_13

    .line 3354
    sget-object v1, Lcom/caverock/androidsvg/SVG$Colour;->BLACK:Lcom/caverock/androidsvg/SVG$Colour;

    .line 3355
    :cond_13
    move/from16 v22, v3

    .end local v3    # "userUnits":Z
    .local v22, "userUnits":Z
    iget v3, v1, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    move-object/from16 v19, v1

    .end local v1    # "col":Lcom/caverock/androidsvg/SVG$Colour;
    .local v19, "col":Lcom/caverock/androidsvg/SVG$Colour;
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v3, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->colourWithOpacity(IF)I

    move-result v1

    aput v1, v4, v20

    .line 3356
    add-int/lit8 v20, v20, 0x1

    .line 3358
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 3359
    .end local v5    # "stop":Lcom/caverock/androidsvg/SVG$Stop;
    .end local v12    # "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    .end local v18    # "offset":F
    .end local v19    # "col":Lcom/caverock/androidsvg/SVG$Colour;
    move-object/from16 v1, p2

    move/from16 v3, v22

    goto :goto_c

    .line 3362
    .end local v22    # "userUnits":Z
    .restart local v3    # "userUnits":Z
    :cond_14
    move/from16 v22, v3

    .end local v3    # "userUnits":Z
    .restart local v22    # "userUnits":Z
    cmpl-float v1, v9, v11

    if-nez v1, :cond_15

    cmpl-float v1, v10, v8

    if-eqz v1, :cond_16

    :cond_15
    const/4 v1, 0x1

    if-ne v14, v1, :cond_17

    .line 3363
    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 3364
    add-int/lit8 v1, v14, -0x1

    aget v1, v4, v1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3365
    return-void

    .line 3369
    :cond_17
    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 3370
    .local v1, "tileMode":Landroid/graphics/Shader$TileMode;
    iget-object v3, v2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    if-eqz v3, :cond_19

    .line 3372
    iget-object v3, v2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    sget-object v5, Lcom/caverock/androidsvg/SVG$GradientSpread;->reflect:Lcom/caverock/androidsvg/SVG$GradientSpread;

    if-ne v3, v5, :cond_18

    .line 3373
    sget-object v1, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    goto :goto_10

    .line 3374
    :cond_18
    iget-object v3, v2, Lcom/caverock/androidsvg/SVG$SvgLinearGradient;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    sget-object v5, Lcom/caverock/androidsvg/SVG$GradientSpread;->repeat:Lcom/caverock/androidsvg/SVG$GradientSpread;

    if-ne v3, v5, :cond_19

    .line 3375
    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 3378
    :cond_19
    :goto_10
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 3381
    new-instance v3, Landroid/graphics/LinearGradient;

    move-object v12, v3

    move-object v5, v13

    .end local v13    # "positions":[F
    .local v5, "positions":[F
    move v13, v9

    move v7, v14

    .end local v14    # "numStops":I
    .local v7, "numStops":I
    move v14, v10

    move-object v2, v15

    .end local v15    # "m":Landroid/graphics/Matrix;
    .local v2, "m":Landroid/graphics/Matrix;
    move v15, v11

    move/from16 v16, v8

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v1

    invoke-direct/range {v12 .. v19}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 3382
    .local v3, "gr":Landroid/graphics/LinearGradient;
    invoke-virtual {v3, v2}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 3383
    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 3384
    iget-object v12, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v12, v12, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v12, v12, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-static {v12}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clamp255(F)I

    move-result v12

    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3385
    return-void
.end method

.method private makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Circle;)Landroid/graphics/Path;
    .locals 18
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Circle;

    .line 4208
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Circle;->cx:Lcom/caverock/androidsvg/SVG$Length;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Circle;->cx:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    .line 4209
    .local v2, "cx":F
    :goto_0
    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$Circle;->cy:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v4, :cond_1

    iget-object v3, v1, Lcom/caverock/androidsvg/SVG$Circle;->cy:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v3, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    .line 4210
    .local v3, "cy":F
    :cond_1
    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$Circle;->r:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v11

    .line 4212
    .local v11, "r":F
    sub-float v12, v2, v11

    .line 4213
    .local v12, "left":F
    sub-float v13, v3, v11

    .line 4214
    .local v13, "top":F
    add-float v14, v2, v11

    .line 4215
    .local v14, "right":F
    add-float v15, v3, v11

    .line 4217
    .local v15, "bottom":F
    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$Circle;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v4, :cond_2

    .line 4218
    new-instance v4, Lcom/caverock/androidsvg/SVG$Box;

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v6, v11, v5

    mul-float/2addr v5, v11

    invoke-direct {v4, v12, v13, v6, v5}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v4, v1, Lcom/caverock/androidsvg/SVG$Circle;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 4221
    :cond_2
    const v4, 0x3f0d6289

    mul-float v16, v11, v4

    .line 4223
    .local v16, "cp":F
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    move-object v10, v4

    .line 4224
    .local v10, "p":Landroid/graphics/Path;
    invoke-virtual {v10, v2, v13}, Landroid/graphics/Path;->moveTo(FF)V

    .line 4225
    add-float v5, v2, v16

    sub-float v8, v3, v16

    move v6, v13

    move v7, v14

    move v9, v14

    move-object/from16 v17, v10

    .end local v10    # "p":Landroid/graphics/Path;
    .local v17, "p":Landroid/graphics/Path;
    move v10, v3

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 4226
    add-float v6, v3, v16

    add-float v7, v2, v16

    move-object/from16 v4, v17

    move v5, v14

    move v8, v15

    move v9, v2

    move v10, v15

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 4227
    sub-float v5, v2, v16

    add-float v8, v3, v16

    move v6, v15

    move v7, v12

    move v9, v12

    move v10, v3

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 4228
    sub-float v6, v3, v16

    sub-float v7, v2, v16

    move v5, v12

    move v8, v13

    move v9, v2

    move v10, v13

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 4229
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Path;->close()V

    .line 4230
    return-object v17
.end method

.method private makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Ellipse;)Landroid/graphics/Path;
    .locals 20
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Ellipse;

    .line 4236
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Ellipse;->cx:Lcom/caverock/androidsvg/SVG$Length;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Ellipse;->cx:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    .line 4237
    .local v2, "cx":F
    :goto_0
    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$Ellipse;->cy:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v4, :cond_1

    iget-object v3, v1, Lcom/caverock/androidsvg/SVG$Ellipse;->cy:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v3, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    .line 4238
    .local v3, "cy":F
    :cond_1
    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$Ellipse;->rx:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v11

    .line 4239
    .local v11, "rx":F
    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$Ellipse;->ry:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v12

    .line 4241
    .local v12, "ry":F
    sub-float v13, v2, v11

    .line 4242
    .local v13, "left":F
    sub-float v14, v3, v12

    .line 4243
    .local v14, "top":F
    add-float v15, v2, v11

    .line 4244
    .local v15, "right":F
    add-float v16, v3, v12

    .line 4246
    .local v16, "bottom":F
    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$Ellipse;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v4, :cond_2

    .line 4247
    new-instance v4, Lcom/caverock/androidsvg/SVG$Box;

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v6, v11, v5

    mul-float/2addr v5, v12

    invoke-direct {v4, v13, v14, v6, v5}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v4, v1, Lcom/caverock/androidsvg/SVG$Ellipse;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 4250
    :cond_2
    const v4, 0x3f0d6289

    mul-float v17, v11, v4

    .line 4251
    .local v17, "cpx":F
    mul-float v18, v12, v4

    .line 4253
    .local v18, "cpy":F
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    move-object v10, v4

    .line 4254
    .local v10, "p":Landroid/graphics/Path;
    invoke-virtual {v10, v2, v14}, Landroid/graphics/Path;->moveTo(FF)V

    .line 4255
    add-float v5, v2, v17

    sub-float v8, v3, v18

    move v6, v14

    move v7, v15

    move v9, v15

    move-object/from16 v19, v10

    .end local v10    # "p":Landroid/graphics/Path;
    .local v19, "p":Landroid/graphics/Path;
    move v10, v3

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 4256
    add-float v6, v3, v18

    add-float v7, v2, v17

    move-object/from16 v4, v19

    move v5, v15

    move/from16 v8, v16

    move v9, v2

    move/from16 v10, v16

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 4257
    sub-float v5, v2, v17

    add-float v8, v3, v18

    move/from16 v6, v16

    move v7, v13

    move v9, v13

    move v10, v3

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 4258
    sub-float v6, v3, v18

    sub-float v7, v2, v17

    move v5, v13

    move v8, v14

    move v9, v2

    move v10, v14

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 4259
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Path;->close()V

    .line 4260
    return-object v19
.end method

.method private makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Line;)Landroid/graphics/Path;
    .locals 9
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Line;

    .line 4128
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Line;->x1:Lcom/caverock/androidsvg/SVG$Length;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Line;->x1:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    .line 4129
    .local v0, "x1":F
    :goto_0
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Line;->y1:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Line;->y1:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    .line 4130
    .local v2, "y1":F
    :goto_1
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Line;->x2:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Line;->x2:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v3, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    .line 4131
    .local v3, "x2":F
    :goto_2
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Line;->y2:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Line;->y2:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    .line 4133
    .local v1, "y2":F
    :goto_3
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Line;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v4, :cond_4

    .line 4134
    new-instance v4, Lcom/caverock/androidsvg/SVG$Box;

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v6

    sub-float v7, v3, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sub-float v8, v1, v2

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v4, p1, Lcom/caverock/androidsvg/SVG$Line;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 4137
    :cond_4
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 4138
    .local v4, "p":Landroid/graphics/Path;
    invoke-virtual {v4, v0, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 4139
    invoke-virtual {v4, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 4140
    return-object v4
.end method

.method private makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$PolyLine;)Landroid/graphics/Path;
    .locals 5
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$PolyLine;

    .line 4266
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 4268
    .local v0, "path":Landroid/graphics/Path;
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 4269
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_0
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 4270
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    aget v2, v2, v1

    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    add-int/lit8 v4, v1, 0x1

    aget v3, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 4269
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 4272
    .end local v1    # "i":I
    :cond_0
    instance-of v1, p1, Lcom/caverock/androidsvg/SVG$Polygon;

    if-eqz v1, :cond_1

    .line 4273
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 4275
    :cond_1
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v1, :cond_2

    .line 4276
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculatePathBounds(Landroid/graphics/Path;)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 4278
    :cond_2
    return-object v0
.end method

.method private makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Rect;)Landroid/graphics/Path;
    .locals 26
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Rect;

    .line 4148
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Rect;->rx:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Rect;->ry:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v2, :cond_0

    .line 4149
    const/4 v2, 0x0

    .line 4150
    .local v2, "rx":F
    const/4 v3, 0x0

    .local v3, "ry":F
    goto :goto_0

    .line 4151
    .end local v2    # "rx":F
    .end local v3    # "ry":F
    :cond_0
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Rect;->rx:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v2, :cond_1

    .line 4152
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Rect;->ry:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    move v3, v2

    .restart local v2    # "rx":F
    .restart local v3    # "ry":F
    goto :goto_0

    .line 4153
    .end local v2    # "rx":F
    .end local v3    # "ry":F
    :cond_1
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Rect;->ry:Lcom/caverock/androidsvg/SVG$Length;

    if-nez v2, :cond_2

    .line 4154
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Rect;->rx:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    move v3, v2

    .restart local v2    # "rx":F
    .restart local v3    # "ry":F
    goto :goto_0

    .line 4156
    .end local v2    # "rx":F
    .end local v3    # "ry":F
    :cond_2
    iget-object v2, v1, Lcom/caverock/androidsvg/SVG$Rect;->rx:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    .line 4157
    .restart local v2    # "rx":F
    iget-object v3, v1, Lcom/caverock/androidsvg/SVG$Rect;->ry:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v3, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    .line 4159
    .restart local v3    # "ry":F
    :goto_0
    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$Rect;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 4160
    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$Rect;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 4161
    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$Rect;->x:Lcom/caverock/androidsvg/SVG$Length;

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$Rect;->x:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    goto :goto_1

    :cond_3
    move v4, v5

    .line 4162
    .local v4, "x":F
    :goto_1
    iget-object v6, v1, Lcom/caverock/androidsvg/SVG$Rect;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v6, :cond_4

    iget-object v6, v1, Lcom/caverock/androidsvg/SVG$Rect;->y:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v6, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v6

    goto :goto_2

    :cond_4
    move v6, v5

    :goto_2
    move v14, v6

    .line 4163
    .local v14, "y":F
    iget-object v6, v1, Lcom/caverock/androidsvg/SVG$Rect;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v6, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v15

    .line 4164
    .local v15, "w":F
    iget-object v6, v1, Lcom/caverock/androidsvg/SVG$Rect;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v6, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v13

    .line 4166
    .local v13, "h":F
    iget-object v6, v1, Lcom/caverock/androidsvg/SVG$Rect;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v6, :cond_5

    .line 4167
    new-instance v6, Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {v6, v4, v14, v15, v13}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v6, v1, Lcom/caverock/androidsvg/SVG$Rect;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 4170
    :cond_5
    add-float v12, v4, v15

    .line 4171
    .local v12, "right":F
    add-float v11, v14, v13

    .line 4173
    .local v11, "bottom":F
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    move-object v10, v6

    .line 4174
    .local v10, "p":Landroid/graphics/Path;
    cmpl-float v6, v2, v5

    if-eqz v6, :cond_7

    cmpl-float v5, v3, v5

    if-nez v5, :cond_6

    move-object v0, v10

    move v1, v11

    move/from16 v25, v13

    move/from16 v24, v15

    move v15, v12

    goto/16 :goto_3

    .line 4188
    :cond_6
    const v5, 0x3f0d6289

    mul-float v23, v2, v5

    .line 4189
    .local v23, "cpx":F
    mul-float/2addr v5, v3

    .line 4191
    .local v5, "cpy":F
    add-float v6, v14, v3

    invoke-virtual {v10, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 4192
    add-float v6, v14, v3

    sub-float v8, v6, v5

    add-float v6, v4, v2

    sub-float v9, v6, v23

    add-float v16, v4, v2

    move-object v6, v10

    move v7, v4

    move-object v0, v10

    .end local v10    # "p":Landroid/graphics/Path;
    .local v0, "p":Landroid/graphics/Path;
    move v10, v14

    move v1, v11

    .end local v11    # "bottom":F
    .local v1, "bottom":F
    move/from16 v11, v16

    move/from16 v24, v15

    move v15, v12

    .end local v12    # "right":F
    .local v15, "right":F
    .local v24, "w":F
    move v12, v14

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 4193
    sub-float v12, v15, v2

    invoke-virtual {v0, v12, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 4194
    sub-float v12, v15, v2

    add-float v8, v12, v23

    add-float v6, v14, v3

    sub-float v11, v6, v5

    add-float v6, v14, v3

    move-object v7, v0

    move v9, v14

    move v10, v15

    move v12, v15

    move/from16 v25, v13

    .end local v13    # "h":F
    .local v25, "h":F
    move v13, v6

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 4195
    sub-float v11, v1, v3

    invoke-virtual {v0, v15, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 4196
    sub-float v11, v1, v3

    add-float v18, v11, v5

    sub-float v12, v15, v2

    add-float v19, v12, v23

    sub-float v21, v15, v2

    move-object/from16 v16, v0

    move/from16 v17, v15

    move/from16 v20, v1

    move/from16 v22, v1

    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 4197
    add-float v6, v4, v2

    invoke-virtual {v0, v6, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 4198
    add-float v6, v4, v2

    sub-float v7, v6, v23

    sub-float v11, v1, v3

    add-float v10, v11, v5

    sub-float v12, v1, v3

    move-object v6, v0

    move v8, v1

    move v9, v4

    move v11, v4

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 4199
    add-float v6, v14, v3

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_4

    .line 4174
    .end local v0    # "p":Landroid/graphics/Path;
    .end local v1    # "bottom":F
    .end local v5    # "cpy":F
    .end local v23    # "cpx":F
    .end local v24    # "w":F
    .end local v25    # "h":F
    .restart local v10    # "p":Landroid/graphics/Path;
    .restart local v11    # "bottom":F
    .restart local v12    # "right":F
    .restart local v13    # "h":F
    .local v15, "w":F
    :cond_7
    move-object v0, v10

    move v1, v11

    move/from16 v25, v13

    move/from16 v24, v15

    move v15, v12

    .line 4177
    .end local v10    # "p":Landroid/graphics/Path;
    .end local v11    # "bottom":F
    .end local v12    # "right":F
    .end local v13    # "h":F
    .restart local v0    # "p":Landroid/graphics/Path;
    .restart local v1    # "bottom":F
    .local v15, "right":F
    .restart local v24    # "w":F
    .restart local v25    # "h":F
    :goto_3
    invoke-virtual {v0, v4, v14}, Landroid/graphics/Path;->moveTo(FF)V

    .line 4178
    invoke-virtual {v0, v15, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 4179
    invoke-virtual {v0, v15, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 4180
    invoke-virtual {v0, v4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 4181
    invoke-virtual {v0, v4, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 4201
    :goto_4
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 4202
    return-object v0
.end method

.method private makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Text;)Landroid/graphics/Path;
    .locals 10
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Text;

    .line 4285
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Text;->x:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Text;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Text;->x:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 4286
    .local v0, "x":F
    :goto_1
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Text;->y:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Text;->y:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Text;->y:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v3, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    goto :goto_3

    :cond_3
    :goto_2
    move v3, v2

    .line 4287
    .local v3, "y":F
    :goto_3
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Text;->dx:Ljava/util/List;

    if-eqz v4, :cond_5

    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Text;->dx:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4

    goto :goto_4

    :cond_4
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Text;->dx:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    goto :goto_5

    :cond_5
    :goto_4
    move v4, v2

    .line 4288
    .local v4, "dx":F
    :goto_5
    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$Text;->dy:Ljava/util/List;

    if-eqz v5, :cond_7

    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$Text;->dy:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_6

    goto :goto_6

    :cond_6
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Text;->dy:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    :cond_7
    :goto_6
    move v1, v2

    .line 4291
    .local v1, "dy":F
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    sget-object v5, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-eq v2, v5, :cond_9

    .line 4292
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateTextWidth(Lcom/caverock/androidsvg/SVG$TextContainer;)F

    move-result v2

    .line 4293
    .local v2, "textWidth":F
    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    sget-object v6, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-ne v5, v6, :cond_8

    .line 4294
    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v2, v5

    sub-float/2addr v0, v5

    goto :goto_7

    .line 4296
    :cond_8
    sub-float/2addr v0, v2

    .line 4300
    .end local v2    # "textWidth":F
    :cond_9
    :goto_7
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Text;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v2, :cond_a

    .line 4301
    new-instance v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;

    invoke-direct {v2, p0, v0, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FF)V

    .line 4302
    .local v2, "proc":Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;
    invoke-direct {p0, p1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 4303
    new-instance v5, Lcom/caverock/androidsvg/SVG$Box;

    iget-object v6, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget-object v8, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    iget-object v9, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v5, p1, Lcom/caverock/androidsvg/SVG$Text;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 4306
    .end local v2    # "proc":Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;
    :cond_a
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 4307
    .local v2, "textAsPath":Landroid/graphics/Path;
    new-instance v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;

    add-float v6, v0, v4

    add-float v7, v3, v1

    invoke-direct {v5, p0, v6, v7, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextToPath;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FFLandroid/graphics/Path;)V

    invoke-direct {p0, p1, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 4309
    return-object v2
.end method

.method private makeRadialGradient(ZLcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$SvgRadialGradient;)V
    .locals 23
    .param p1, "isFill"    # Z
    .param p2, "boundingBox"    # Lcom/caverock/androidsvg/SVG$Box;
    .param p3, "gradient"    # Lcom/caverock/androidsvg/SVG$SvgRadialGradient;

    .line 3390
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget-object v3, v2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->href:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 3391
    iget-object v3, v2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->href:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->fillInChainedGradientFields(Lcom/caverock/androidsvg/SVG$GradientElement;Ljava/lang/String;)V

    .line 3393
    :cond_0
    iget-object v3, v2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->gradientUnitsAreUser:Ljava/lang/Boolean;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->gradientUnitsAreUser:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    .line 3394
    .local v3, "userUnits":Z
    :goto_0
    iget-object v6, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    if-eqz p1, :cond_2

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    goto :goto_1

    :cond_2
    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    .line 3397
    .local v6, "paint":Landroid/graphics/Paint;
    :goto_1
    if-eqz v3, :cond_6

    .line 3399
    new-instance v7, Lcom/caverock/androidsvg/SVG$Length;

    const/high16 v8, 0x42480000    # 50.0f

    sget-object v9, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v7, v8, v9}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    .line 3400
    .local v7, "fiftyPercent":Lcom/caverock/androidsvg/SVG$Length;
    iget-object v8, v2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v8, :cond_3

    iget-object v8, v2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v8, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v8

    goto :goto_2

    :cond_3
    invoke-virtual {v7, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v8

    .line 3401
    .local v8, "_cx":F
    :goto_2
    iget-object v9, v2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v9, :cond_4

    iget-object v9, v2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v9, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v9

    goto :goto_3

    :cond_4
    invoke-virtual {v7, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v9

    .line 3402
    .local v9, "_cy":F
    :goto_3
    iget-object v10, v2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v10, :cond_5

    iget-object v10, v2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v10, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v10

    goto :goto_4

    :cond_5
    invoke-virtual {v7, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v10

    :goto_4
    move v7, v10

    .line 3403
    .local v7, "_r":F
    goto :goto_7

    .line 3406
    .end local v7    # "_r":F
    .end local v8    # "_cx":F
    .end local v9    # "_cy":F
    :cond_6
    iget-object v7, v2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f000000    # 0.5f

    if-eqz v7, :cond_7

    iget-object v7, v2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cx:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v7, v0, v8}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v7

    goto :goto_5

    :cond_7
    move v7, v9

    .line 3407
    .local v7, "_cx":F
    :goto_5
    iget-object v10, v2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v10, :cond_8

    iget-object v10, v2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->cy:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v10, v0, v8}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v10

    goto :goto_6

    :cond_8
    move v10, v9

    .line 3408
    .local v10, "_cy":F
    :goto_6
    iget-object v11, v2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v11, :cond_9

    iget-object v9, v2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->r:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v9, v0, v8}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v9

    :cond_9
    move v8, v9

    move v9, v10

    move/from16 v22, v8

    move v8, v7

    move/from16 v7, v22

    .line 3414
    .end local v10    # "_cy":F
    .local v7, "_r":F
    .restart local v8    # "_cx":F
    .restart local v9    # "_cy":F
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 3417
    invoke-direct {v0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v10

    iput-object v10, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 3420
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 3421
    .local v10, "m":Landroid/graphics/Matrix;
    if-nez v3, :cond_a

    .line 3423
    iget v11, v1, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget v12, v1, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 3424
    iget v11, v1, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget v12, v1, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 3426
    :cond_a
    iget-object v11, v2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->gradientTransform:Landroid/graphics/Matrix;

    if-eqz v11, :cond_b

    .line 3428
    iget-object v11, v2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->gradientTransform:Landroid/graphics/Matrix;

    invoke-virtual {v10, v11}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 3432
    :cond_b
    iget-object v11, v2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->children:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v15

    .line 3433
    .local v15, "numStops":I
    if-nez v15, :cond_d

    .line 3435
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 3436
    if-eqz p1, :cond_c

    .line 3437
    iget-object v5, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-boolean v4, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    goto :goto_8

    .line 3439
    :cond_c
    iget-object v5, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-boolean v4, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    .line 3440
    :goto_8
    return-void

    .line 3443
    :cond_d
    new-array v4, v15, [I

    .line 3444
    .local v4, "colours":[I
    new-array v14, v15, [F

    .line 3445
    .local v14, "positions":[F
    const/4 v11, 0x0

    .line 3446
    .local v11, "i":I
    const/high16 v12, -0x40800000    # -1.0f

    .line 3447
    .local v12, "lastOffset":F
    iget-object v13, v2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->children:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move/from16 v18, v11

    move/from16 v19, v12

    .end local v11    # "i":I
    .end local v12    # "lastOffset":F
    .local v18, "i":I
    .local v19, "lastOffset":F
    :goto_9
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 3449
    .local v11, "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    move-object v5, v11

    check-cast v5, Lcom/caverock/androidsvg/SVG$Stop;

    .line 3450
    .local v5, "stop":Lcom/caverock/androidsvg/SVG$Stop;
    iget-object v12, v5, Lcom/caverock/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    if-eqz v12, :cond_e

    iget-object v12, v5, Lcom/caverock/androidsvg/SVG$Stop;->offset:Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    goto :goto_a

    :cond_e
    const/4 v12, 0x0

    .line 3451
    .local v12, "offset":F
    :goto_a
    if-eqz v18, :cond_10

    cmpl-float v17, v12, v19

    if-ltz v17, :cond_f

    goto :goto_b

    .line 3457
    :cond_f
    aput v19, v14, v18

    goto :goto_c

    .line 3452
    :cond_10
    :goto_b
    aput v12, v14, v18

    .line 3453
    move/from16 v17, v12

    move/from16 v19, v17

    .line 3460
    :goto_c
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 3462
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {v0, v1, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 3463
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    check-cast v1, Lcom/caverock/androidsvg/SVG$Colour;

    .line 3464
    .local v1, "col":Lcom/caverock/androidsvg/SVG$Colour;
    if-nez v1, :cond_11

    .line 3465
    sget-object v1, Lcom/caverock/androidsvg/SVG$Colour;->BLACK:Lcom/caverock/androidsvg/SVG$Colour;

    .line 3466
    :cond_11
    move/from16 v20, v3

    .end local v3    # "userUnits":Z
    .local v20, "userUnits":Z
    iget v3, v1, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    move-object/from16 v17, v1

    .end local v1    # "col":Lcom/caverock/androidsvg/SVG$Colour;
    .local v17, "col":Lcom/caverock/androidsvg/SVG$Colour;
    iget-object v1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v3, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->colourWithOpacity(IF)I

    move-result v1

    aput v1, v4, v18

    .line 3467
    add-int/lit8 v18, v18, 0x1

    .line 3469
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 3470
    .end local v5    # "stop":Lcom/caverock/androidsvg/SVG$Stop;
    .end local v11    # "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    .end local v12    # "offset":F
    .end local v17    # "col":Lcom/caverock/androidsvg/SVG$Colour;
    move-object/from16 v1, p2

    move/from16 v3, v20

    goto :goto_9

    .line 3473
    .end local v20    # "userUnits":Z
    .restart local v3    # "userUnits":Z
    :cond_12
    move/from16 v20, v3

    .end local v3    # "userUnits":Z
    .restart local v20    # "userUnits":Z
    const/4 v1, 0x0

    cmpl-float v1, v7, v1

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    if-ne v15, v1, :cond_13

    move-object v5, v14

    move/from16 v21, v15

    goto :goto_e

    .line 3480
    :cond_13
    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 3481
    .local v1, "tileMode":Landroid/graphics/Shader$TileMode;
    iget-object v3, v2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    if-eqz v3, :cond_15

    .line 3483
    iget-object v3, v2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    sget-object v5, Lcom/caverock/androidsvg/SVG$GradientSpread;->reflect:Lcom/caverock/androidsvg/SVG$GradientSpread;

    if-ne v3, v5, :cond_14

    .line 3484
    sget-object v1, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    goto :goto_d

    .line 3485
    :cond_14
    iget-object v3, v2, Lcom/caverock/androidsvg/SVG$SvgRadialGradient;->spreadMethod:Lcom/caverock/androidsvg/SVG$GradientSpread;

    sget-object v5, Lcom/caverock/androidsvg/SVG$GradientSpread;->repeat:Lcom/caverock/androidsvg/SVG$GradientSpread;

    if-ne v3, v5, :cond_15

    .line 3486
    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    .line 3489
    :cond_15
    :goto_d
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 3492
    new-instance v3, Landroid/graphics/RadialGradient;

    move-object v11, v3

    move v12, v8

    move v13, v9

    move-object v5, v14

    .end local v14    # "positions":[F
    .local v5, "positions":[F
    move v14, v7

    move/from16 v21, v15

    .end local v15    # "numStops":I
    .local v21, "numStops":I
    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v1

    invoke-direct/range {v11 .. v17}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 3493
    .local v3, "gr":Landroid/graphics/RadialGradient;
    invoke-virtual {v3, v10}, Landroid/graphics/RadialGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 3494
    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 3495
    iget-object v11, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v11, v11, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v11, v11, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-static {v11}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clamp255(F)I

    move-result v11

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3496
    return-void

    .line 3473
    .end local v1    # "tileMode":Landroid/graphics/Shader$TileMode;
    .end local v3    # "gr":Landroid/graphics/RadialGradient;
    .end local v5    # "positions":[F
    .end local v21    # "numStops":I
    .restart local v14    # "positions":[F
    .restart local v15    # "numStops":I
    :cond_16
    move-object v5, v14

    move/from16 v21, v15

    .line 3474
    .end local v14    # "positions":[F
    .end local v15    # "numStops":I
    .restart local v5    # "positions":[F
    .restart local v21    # "numStops":I
    :goto_e
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 3475
    add-int/lit8 v15, v21, -0x1

    aget v1, v4, v15

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3476
    return-void
.end method

.method private makeViewPort(Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;)Lcom/caverock/androidsvg/SVG$Box;
    .locals 6
    .param p1, "x"    # Lcom/caverock/androidsvg/SVG$Length;
    .param p2, "y"    # Lcom/caverock/androidsvg/SVG$Length;
    .param p3, "width"    # Lcom/caverock/androidsvg/SVG$Length;
    .param p4, "height"    # Lcom/caverock/androidsvg/SVG$Length;

    .line 633
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 634
    .local v1, "_x":F
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v0

    .line 636
    .local v0, "_y":F
    :cond_1
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getCurrentViewPortInUserUnits()Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v2

    .line 637
    .local v2, "viewPortUser":Lcom/caverock/androidsvg/SVG$Box;
    if-eqz p3, :cond_2

    invoke-virtual {p3, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    goto :goto_1

    :cond_2
    iget v3, v2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 638
    .local v3, "_w":F
    :goto_1
    if-eqz p4, :cond_3

    invoke-virtual {p4, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    goto :goto_2

    :cond_3
    iget v4, v2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .line 640
    .local v4, "_h":F
    :goto_2
    new-instance v5, Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {v5, v1, v0, v3, v4}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    return-object v5
.end method

.method private objectToPath(Lcom/caverock/androidsvg/SVG$SvgElement;Z)Landroid/graphics/Path;
    .locals 6
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElement;
    .param p2, "allowUse"    # Z

    .line 3724
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3725
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {v0, p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 3727
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 3729
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 3734
    :cond_0
    const/4 v0, 0x0

    .line 3736
    .local v0, "path":Landroid/graphics/Path;
    instance-of v2, p1, Lcom/caverock/androidsvg/SVG$Use;

    if-eqz v2, :cond_7

    .line 3738
    const/4 v2, 0x0

    if-nez p2, :cond_1

    .line 3739
    const-string v3, "<use> elements inside a <clipPath> cannot reference another <use>"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3743
    :cond_1
    move-object v3, p1

    check-cast v3, Lcom/caverock/androidsvg/SVG$Use;

    .line 3744
    .local v3, "useElement":Lcom/caverock/androidsvg/SVG$Use;
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v5, v3, Lcom/caverock/androidsvg/SVG$Use;->href:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v4

    .line 3745
    .local v4, "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    if-nez v4, :cond_2

    .line 3746
    iget-object v2, v3, Lcom/caverock/androidsvg/SVG$Use;->href:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v5, "Use reference \'%s\' not found"

    invoke-static {v5, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3747
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 3748
    return-object v1

    .line 3750
    :cond_2
    instance-of v5, v4, Lcom/caverock/androidsvg/SVG$SvgElement;

    if-nez v5, :cond_3

    .line 3751
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 3752
    return-object v1

    .line 3755
    :cond_3
    move-object v5, v4

    check-cast v5, Lcom/caverock/androidsvg/SVG$SvgElement;

    invoke-direct {p0, v5, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->objectToPath(Lcom/caverock/androidsvg/SVG$SvgElement;Z)Landroid/graphics/Path;

    move-result-object v0

    .line 3756
    if-nez v0, :cond_4

    .line 3757
    return-object v1

    .line 3759
    :cond_4
    iget-object v1, v3, Lcom/caverock/androidsvg/SVG$Use;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v1, :cond_5

    .line 3760
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculatePathBounds(Landroid/graphics/Path;)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v1

    iput-object v1, v3, Lcom/caverock/androidsvg/SVG$Use;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 3763
    :cond_5
    iget-object v1, v3, Lcom/caverock/androidsvg/SVG$Use;->transform:Landroid/graphics/Matrix;

    if-eqz v1, :cond_6

    .line 3764
    iget-object v1, v3, Lcom/caverock/androidsvg/SVG$Use;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 3765
    .end local v3    # "useElement":Lcom/caverock/androidsvg/SVG$Use;
    .end local v4    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_6
    goto/16 :goto_1

    .line 3766
    :cond_7
    instance-of v2, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;

    if-eqz v2, :cond_11

    .line 3768
    move-object v2, p1

    check-cast v2, Lcom/caverock/androidsvg/SVG$GraphicsElement;

    .line 3770
    .local v2, "elem":Lcom/caverock/androidsvg/SVG$GraphicsElement;
    instance-of v3, p1, Lcom/caverock/androidsvg/SVG$Path;

    if-eqz v3, :cond_9

    .line 3772
    move-object v3, p1

    check-cast v3, Lcom/caverock/androidsvg/SVG$Path;

    .line 3773
    .local v3, "pathElem":Lcom/caverock/androidsvg/SVG$Path;
    new-instance v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;

    iget-object v5, v3, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    invoke-direct {v4, p0, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVG$PathDefinition;)V

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->getPath()Landroid/graphics/Path;

    move-result-object v0

    .line 3774
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v4, :cond_8

    .line 3775
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculatePathBounds(Landroid/graphics/Path;)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v4

    iput-object v4, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 3776
    .end local v3    # "pathElem":Lcom/caverock/androidsvg/SVG$Path;
    :cond_8
    goto :goto_0

    .line 3777
    :cond_9
    instance-of v3, p1, Lcom/caverock/androidsvg/SVG$Rect;

    if-eqz v3, :cond_a

    .line 3778
    move-object v3, p1

    check-cast v3, Lcom/caverock/androidsvg/SVG$Rect;

    invoke-direct {p0, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Rect;)Landroid/graphics/Path;

    move-result-object v0

    goto :goto_0

    .line 3779
    :cond_a
    instance-of v3, p1, Lcom/caverock/androidsvg/SVG$Circle;

    if-eqz v3, :cond_b

    .line 3780
    move-object v3, p1

    check-cast v3, Lcom/caverock/androidsvg/SVG$Circle;

    invoke-direct {p0, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Circle;)Landroid/graphics/Path;

    move-result-object v0

    goto :goto_0

    .line 3781
    :cond_b
    instance-of v3, p1, Lcom/caverock/androidsvg/SVG$Ellipse;

    if-eqz v3, :cond_c

    .line 3782
    move-object v3, p1

    check-cast v3, Lcom/caverock/androidsvg/SVG$Ellipse;

    invoke-direct {p0, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Ellipse;)Landroid/graphics/Path;

    move-result-object v0

    goto :goto_0

    .line 3783
    :cond_c
    instance-of v3, p1, Lcom/caverock/androidsvg/SVG$PolyLine;

    if-eqz v3, :cond_d

    .line 3784
    move-object v3, p1

    check-cast v3, Lcom/caverock/androidsvg/SVG$PolyLine;

    invoke-direct {p0, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$PolyLine;)Landroid/graphics/Path;

    move-result-object v0

    .line 3786
    :cond_d
    :goto_0
    if-nez v0, :cond_e

    .line 3787
    return-object v1

    .line 3789
    :cond_e
    iget-object v1, v2, Lcom/caverock/androidsvg/SVG$GraphicsElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v1, :cond_f

    .line 3790
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculatePathBounds(Landroid/graphics/Path;)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v1

    iput-object v1, v2, Lcom/caverock/androidsvg/SVG$GraphicsElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 3793
    :cond_f
    iget-object v1, v2, Lcom/caverock/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    if-eqz v1, :cond_10

    .line 3794
    iget-object v1, v2, Lcom/caverock/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 3796
    :cond_10
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getClipRuleFromState()Landroid/graphics/Path$FillType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 3797
    .end local v2    # "elem":Lcom/caverock/androidsvg/SVG$GraphicsElement;
    goto :goto_1

    .line 3798
    :cond_11
    instance-of v2, p1, Lcom/caverock/androidsvg/SVG$Text;

    if-eqz v2, :cond_15

    .line 3800
    move-object v2, p1

    check-cast v2, Lcom/caverock/androidsvg/SVG$Text;

    .line 3801
    .local v2, "textElem":Lcom/caverock/androidsvg/SVG$Text;
    invoke-direct {p0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Text;)Landroid/graphics/Path;

    move-result-object v0

    .line 3803
    if-nez v0, :cond_12

    .line 3804
    return-object v1

    .line 3806
    :cond_12
    iget-object v1, v2, Lcom/caverock/androidsvg/SVG$Text;->transform:Landroid/graphics/Matrix;

    if-eqz v1, :cond_13

    .line 3807
    iget-object v1, v2, Lcom/caverock/androidsvg/SVG$Text;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 3809
    :cond_13
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getClipRuleFromState()Landroid/graphics/Path$FillType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 3810
    .end local v2    # "textElem":Lcom/caverock/androidsvg/SVG$Text;
    nop

    .line 3817
    :goto_1
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    if-eqz v1, :cond_14

    .line 3819
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)Landroid/graphics/Path;

    move-result-object v1

    .line 3820
    .local v1, "childsClipPath":Landroid/graphics/Path;
    if-eqz v1, :cond_14

    .line 3821
    sget-object v2, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 3825
    .end local v1    # "childsClipPath":Landroid/graphics/Path;
    :cond_14
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 3827
    return-object v0

    .line 3812
    :cond_15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Invalid %s element found in clipPath definition"

    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3813
    return-object v1

    .line 3730
    .end local v0    # "path":Landroid/graphics/Path;
    :cond_16
    :goto_2
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 3731
    return-object v1
.end method

.method private parentPop()V
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 420
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 421
    return-void
.end method

.method private parentPush(Lcom/caverock/androidsvg/SVG$SvgContainer;)V
    .locals 2
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgContainer;

    .line 412
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    return-void
.end method

.method private popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V
    .locals 9
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElement;

    .line 755
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 762
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 763
    .local v0, "maskPaintCombined":Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 764
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    const/16 v3, 0x1f

    invoke-virtual {v1, v2, v0, v3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 767
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 769
    .local v1, "maskPaint1":Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/ColorMatrix;

    const/16 v5, 0x14

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-direct {v4, v5}, Landroid/graphics/ColorMatrix;-><init>([F)V

    .line 773
    .local v4, "luminanceToAlpha":Landroid/graphics/ColorMatrix;
    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v4}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 774
    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v5, v2, v1, v3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 777
    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v5

    .line 778
    .local v5, "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    move-object v6, v5

    check-cast v6, Lcom/caverock/androidsvg/SVG$Mask;

    invoke-direct {p0, v6, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMask(Lcom/caverock/androidsvg/SVG$Mask;Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 780
    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    .line 783
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 784
    .local v6, "maskPaint2":Landroid/graphics/Paint;
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 785
    iget-object v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v7, v2, v6, v3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 788
    move-object v2, v5

    check-cast v2, Lcom/caverock/androidsvg/SVG$Mask;

    invoke-direct {p0, v2, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMask(Lcom/caverock/androidsvg/SVG$Mask;Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 790
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 792
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 795
    .end local v0    # "maskPaintCombined":Landroid/graphics/Paint;
    .end local v1    # "maskPaint1":Landroid/graphics/Paint;
    .end local v4    # "luminanceToAlpha":Landroid/graphics/ColorMatrix;
    .end local v5    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    .end local v6    # "maskPaint2":Landroid/graphics/Paint;
    :cond_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 796
    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3e59ce07    # 0.2127f
        0x3f3710cb    # 0.7151f
        0x3d93dd98    # 0.0722f
        0x0
        0x0
    .end array-data
.end method

.method private processTextChild(Lcom/caverock/androidsvg/SVG$SvgObject;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V
    .locals 9
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgObject;
    .param p2, "textprocessor"    # Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;

    .line 1528
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$TextContainer;

    invoke-virtual {p2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;->doTextContainer(Lcom/caverock/androidsvg/SVG$TextContainer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1529
    return-void

    .line 1531
    :cond_0
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$TextPath;

    if-eqz v0, :cond_1

    .line 1534
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 1536
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$TextPath;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderTextPath(Lcom/caverock/androidsvg/SVG$TextPath;)V

    .line 1539
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    goto/16 :goto_9

    .line 1541
    :cond_1
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$TSpan;

    if-eqz v0, :cond_f

    .line 1543
    const-string v0, "TSpan render"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1546
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 1548
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$TSpan;

    .line 1550
    .local v0, "tspan":Lcom/caverock/androidsvg/SVG$TSpan;
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1552
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1555
    const/4 v2, 0x0

    .local v2, "x":F
    const/4 v3, 0x0

    .local v3, "y":F
    const/4 v4, 0x0

    .local v4, "dx":F
    const/4 v5, 0x0

    .line 1556
    .local v5, "dy":F
    iget-object v6, v0, Lcom/caverock/androidsvg/SVG$TSpan;->x:Ljava/util/List;

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/caverock/androidsvg/SVG$TSpan;->x:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    move v6, v1

    .line 1557
    .local v6, "specifiedX":Z
    :goto_0
    instance-of v7, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    if-eqz v7, :cond_a

    .line 1558
    if-nez v6, :cond_3

    move-object v7, p2

    check-cast v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    iget v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->x:F

    goto :goto_1

    :cond_3
    iget-object v7, v0, Lcom/caverock/androidsvg/SVG$TSpan;->x:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v7, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v7

    :goto_1
    move v2, v7

    .line 1559
    iget-object v7, v0, Lcom/caverock/androidsvg/SVG$TSpan;->y:Ljava/util/List;

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/caverock/androidsvg/SVG$TSpan;->y:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_4

    goto :goto_2

    :cond_4
    iget-object v7, v0, Lcom/caverock/androidsvg/SVG$TSpan;->y:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v7, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v7

    goto :goto_3

    :cond_5
    :goto_2
    move-object v7, p2

    check-cast v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    iget v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->y:F

    :goto_3
    move v3, v7

    .line 1560
    iget-object v7, v0, Lcom/caverock/androidsvg/SVG$TSpan;->dx:Ljava/util/List;

    const/4 v8, 0x0

    if-eqz v7, :cond_7

    iget-object v7, v0, Lcom/caverock/androidsvg/SVG$TSpan;->dx:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_6

    goto :goto_4

    :cond_6
    iget-object v7, v0, Lcom/caverock/androidsvg/SVG$TSpan;->dx:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v7, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v7

    goto :goto_5

    :cond_7
    :goto_4
    move v7, v8

    :goto_5
    move v4, v7

    .line 1561
    iget-object v7, v0, Lcom/caverock/androidsvg/SVG$TSpan;->dy:Ljava/util/List;

    if-eqz v7, :cond_9

    iget-object v7, v0, Lcom/caverock/androidsvg/SVG$TSpan;->dy:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_8

    goto :goto_6

    :cond_8
    iget-object v7, v0, Lcom/caverock/androidsvg/SVG$TSpan;->dy:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v8

    :cond_9
    :goto_6
    move v5, v8

    .line 1565
    :cond_a
    if-eqz v6, :cond_c

    .line 1566
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getAnchorPosition()Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    move-result-object v1

    .line 1567
    .local v1, "anchor":Lcom/caverock/androidsvg/SVG$Style$TextAnchor;
    sget-object v7, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-eq v1, v7, :cond_c

    .line 1568
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateTextWidth(Lcom/caverock/androidsvg/SVG$TextContainer;)F

    move-result v7

    .line 1569
    .local v7, "textWidth":F
    sget-object v8, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-ne v1, v8, :cond_b

    .line 1570
    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v7, v8

    sub-float/2addr v2, v8

    goto :goto_7

    .line 1572
    :cond_b
    sub-float/2addr v2, v7

    .line 1577
    .end local v1    # "anchor":Lcom/caverock/androidsvg/SVG$Style$TextAnchor;
    .end local v7    # "textWidth":F
    :cond_c
    :goto_7
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$TSpan;->getTextRoot()Lcom/caverock/androidsvg/SVG$TextRoot;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/SVG$SvgElement;

    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradientsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1579
    instance-of v1, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    if-eqz v1, :cond_d

    .line 1580
    move-object v1, p2

    check-cast v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    add-float v7, v2, v4

    iput v7, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->x:F

    .line 1581
    move-object v1, p2

    check-cast v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    add-float v7, v3, v5

    iput v7, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;->y:F

    .line 1584
    :cond_d
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v1

    .line 1586
    .local v1, "compositing":Z
    invoke-direct {p0, v0, p2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 1588
    if-eqz v1, :cond_e

    .line 1589
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1593
    .end local v1    # "compositing":Z
    .end local v2    # "x":F
    .end local v3    # "y":F
    .end local v4    # "dx":F
    .end local v5    # "dy":F
    .end local v6    # "specifiedX":Z
    :cond_e
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 1594
    .end local v0    # "tspan":Lcom/caverock/androidsvg/SVG$TSpan;
    goto :goto_9

    .line 1595
    :cond_f
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$TRef;

    if-eqz v0, :cond_13

    .line 1598
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 1600
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$TRef;

    .line 1602
    .local v0, "tref":Lcom/caverock/androidsvg/SVG$TRef;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1604
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1606
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$TRef;->getTextRoot()Lcom/caverock/androidsvg/SVG$TextRoot;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/SVG$SvgElement;

    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradientsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1609
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgObject;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$TRef;->href:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v1

    .line 1610
    .local v1, "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    if-eqz v1, :cond_11

    instance-of v2, v1, Lcom/caverock/androidsvg/SVG$TextContainer;

    if-eqz v2, :cond_11

    .line 1612
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1613
    .local v2, "str":Ljava/lang/StringBuilder;
    move-object v3, v1

    check-cast v3, Lcom/caverock/androidsvg/SVG$TextContainer;

    invoke-direct {p0, v3, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->extractRawText(Lcom/caverock/androidsvg/SVG$TextContainer;Ljava/lang/StringBuilder;)V

    .line 1614
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_10

    .line 1615
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;->processText(Ljava/lang/String;)V

    .line 1617
    .end local v2    # "str":Ljava/lang/StringBuilder;
    :cond_10
    goto :goto_8

    .line 1620
    :cond_11
    iget-object v2, v0, Lcom/caverock/androidsvg/SVG$TRef;->href:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Tref reference \'%s\' not found"

    invoke-static {v3, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1625
    .end local v1    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_12
    :goto_8
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 1627
    .end local v0    # "tref":Lcom/caverock/androidsvg/SVG$TRef;
    :cond_13
    :goto_9
    return-void
.end method

.method private pushLayer()Z
    .locals 5

    .line 724
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->requiresCompositing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 725
    const/4 v0, 0x0

    return v0

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->clamp255(F)I

    move-result v1

    const/16 v2, 0x1f

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 731
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {v0, p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 734
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 735
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    .line 737
    .local v0, "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/caverock/androidsvg/SVG$Mask;

    if-nez v2, :cond_2

    .line 739
    :cond_1
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, "Mask reference \'%s\' not found"

    invoke-static {v4, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 740
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iput-object v3, v2, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    .line 741
    return v1

    .line 748
    .end local v0    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_2
    return v1
.end method

.method private realignMarkerMid(Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;
    .locals 7
    .param p1, "lastPos"    # Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;
    .param p2, "thisPos"    # Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;
    .param p3, "nextPos"    # Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    .line 3028
    iget v0, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    iget v1, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    iget v2, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    iget v3, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    sub-float/2addr v2, v3

    iget v3, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    iget v4, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    sub-float/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->dotProduct(FFFF)F

    move-result v0

    .line 3029
    .local v0, "dot":F
    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    .line 3031
    iget v2, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    iget v3, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    iget v4, p3, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    iget v5, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    sub-float/2addr v4, v5

    iget v5, p3, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    iget v6, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    sub-float/2addr v5, v6

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->dotProduct(FFFF)F

    move-result v0

    .line 3033
    :cond_0
    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    .line 3034
    return-object p2

    .line 3035
    :cond_1
    cmpl-float v2, v0, v1

    if-nez v2, :cond_3

    .line 3038
    iget v2, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    cmpl-float v2, v2, v1

    if-gtz v2, :cond_2

    iget v2, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_3

    .line 3039
    :cond_2
    return-object p2

    .line 3042
    :cond_3
    iget v1, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    neg-float v1, v1

    iput v1, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    .line 3043
    iget v1, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    neg-float v1, v1

    iput v1, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    .line 3044
    return-object p2
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Circle;)V
    .locals 3
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Circle;

    .line 1143
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Circle render"

    invoke-static {v1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1145
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Circle;->r:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Circle;->r:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1148
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1150
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1151
    return-void

    .line 1152
    :cond_1
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1153
    return-void

    .line 1155
    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Circle;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3

    .line 1156
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Circle;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1158
    :cond_3
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Circle;)Landroid/graphics/Path;

    move-result-object v0

    .line 1159
    .local v0, "path":Landroid/graphics/Path;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1161
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradientsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1162
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1164
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v1

    .line 1166
    .local v1, "compositing":Z
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-eqz v2, :cond_4

    .line 1167
    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    .line 1168
    :cond_4
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-eqz v2, :cond_5

    .line 1169
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    .line 1171
    :cond_5
    if-eqz v1, :cond_6

    .line 1172
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1173
    :cond_6
    return-void

    .line 1146
    .end local v0    # "path":Landroid/graphics/Path;
    .end local v1    # "compositing":Z
    :cond_7
    :goto_0
    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Ellipse;)V
    .locals 3
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Ellipse;

    .line 1181
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Ellipse render"

    invoke-static {v1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1183
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->rx:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->ry:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->rx:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->ry:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1186
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1188
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1189
    return-void

    .line 1190
    :cond_1
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1191
    return-void

    .line 1193
    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3

    .line 1194
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Ellipse;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1196
    :cond_3
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Ellipse;)Landroid/graphics/Path;

    move-result-object v0

    .line 1197
    .local v0, "path":Landroid/graphics/Path;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1199
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradientsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1200
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1202
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v1

    .line 1204
    .local v1, "compositing":Z
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-eqz v2, :cond_4

    .line 1205
    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    .line 1206
    :cond_4
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-eqz v2, :cond_5

    .line 1207
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    .line 1209
    :cond_5
    if-eqz v1, :cond_6

    .line 1210
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1211
    :cond_6
    return-void

    .line 1184
    .end local v0    # "path":Landroid/graphics/Path;
    .end local v1    # "compositing":Z
    :cond_7
    :goto_0
    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Group;)V
    .locals 2
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Group;

    .line 649
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Group render"

    invoke-static {v1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 651
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 653
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_0

    .line 654
    return-void

    .line 656
    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Group;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_1

    .line 657
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Group;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 660
    :cond_1
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 662
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v0

    .line 664
    .local v0, "compositing":Z
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderChildren(Lcom/caverock/androidsvg/SVG$SvgContainer;Z)V

    .line 666
    if-eqz v0, :cond_2

    .line 667
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 669
    :cond_2
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 670
    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Image;)V
    .locals 13
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Image;

    .line 1888
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Image render"

    invoke-static {v2, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1890
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Image;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v1, :cond_e

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Image;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Image;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v1, :cond_e

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Image;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 1891
    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 1894
    :cond_0
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Image;->href:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1895
    return-void

    .line 1898
    :cond_1
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Image;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Image;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio;->LETTERBOX:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 1901
    .local v1, "positioning":Lcom/caverock/androidsvg/PreserveAspectRatio;
    :goto_0
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Image;->href:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForImageDataURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1902
    .local v2, "image":Landroid/graphics/Bitmap;
    if-nez v2, :cond_4

    .line 1904
    invoke-static {}, Lcom/caverock/androidsvg/SVG;->getFileResolver()Lcom/caverock/androidsvg/SVGExternalFileResolver;

    move-result-object v3

    .line 1905
    .local v3, "fileResolver":Lcom/caverock/androidsvg/SVGExternalFileResolver;
    if-nez v3, :cond_3

    .line 1906
    return-void

    .line 1908
    :cond_3
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Image;->href:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/caverock/androidsvg/SVGExternalFileResolver;->resolveImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1910
    .end local v3    # "fileResolver":Lcom/caverock/androidsvg/SVGExternalFileResolver;
    :cond_4
    if-nez v2, :cond_5

    .line 1911
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Image;->href:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "Could not locate image \'%s\'"

    invoke-static {v3, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1912
    return-void

    .line 1914
    :cond_5
    new-instance v3, Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    .line 1916
    .local v3, "imageNaturalSize":Lcom/caverock/androidsvg/SVG$Box;
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v4, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1918
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1919
    return-void

    .line 1920
    :cond_6
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1921
    return-void

    .line 1923
    :cond_7
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Image;->transform:Landroid/graphics/Matrix;

    if-eqz v4, :cond_8

    .line 1924
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$Image;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1927
    :cond_8
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Image;->x:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v4, :cond_9

    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Image;->x:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    goto :goto_1

    :cond_9
    move v4, v6

    .line 1928
    .local v4, "_x":F
    :goto_1
    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$Image;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v5, :cond_a

    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$Image;->y:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v5, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v5

    goto :goto_2

    :cond_a
    move v5, v6

    .line 1929
    .local v5, "_y":F
    :goto_2
    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$Image;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v7, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v7

    .line 1930
    .local v7, "_w":F
    iget-object v8, p1, Lcom/caverock/androidsvg/SVG$Image;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v8, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v8

    .line 1931
    .local v8, "_h":F
    iget-object v9, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    new-instance v10, Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {v10, v4, v5, v7, v8}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v10, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 1933
    iget-object v9, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_b

    .line 1934
    iget-object v9, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v9, v9, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget-object v10, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v10, v10, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v10, v10, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    iget-object v11, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v11, v11, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v11, v11, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget-object v12, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v12, v12, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v12, v12, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setClipRect(FFFF)V

    .line 1937
    :cond_b
    iget-object v9, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v9, v9, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v9, p1, Lcom/caverock/androidsvg/SVG$Image;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 1938
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1940
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1942
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v9

    .line 1944
    .local v9, "compositing":Z
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->viewportFill()V

    .line 1946
    iget-object v10, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v10}, Landroid/graphics/Canvas;->save()I

    .line 1949
    iget-object v10, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v11, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v11, v11, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {p0, v11, v3, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateViewBoxTransform(Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1951
    new-instance v10, Landroid/graphics/Paint;

    iget-object v11, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v11, v11, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v11, v11, Lcom/caverock/androidsvg/SVG$Style;->imageRendering:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

    sget-object v12, Lcom/caverock/androidsvg/SVG$Style$RenderQuality;->optimizeSpeed:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

    if-ne v11, v12, :cond_c

    goto :goto_3

    :cond_c
    const/4 v0, 0x2

    :goto_3
    invoke-direct {v10, v0}, Landroid/graphics/Paint;-><init>(I)V

    move-object v0, v10

    .line 1952
    .local v0, "bmPaint":Landroid/graphics/Paint;
    iget-object v10, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v10, v2, v6, v6, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1954
    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    .line 1956
    if-eqz v9, :cond_d

    .line 1957
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1958
    :cond_d
    return-void

    .line 1892
    .end local v0    # "bmPaint":Landroid/graphics/Paint;
    .end local v1    # "positioning":Lcom/caverock/androidsvg/PreserveAspectRatio;
    .end local v2    # "image":Landroid/graphics/Bitmap;
    .end local v3    # "imageNaturalSize":Lcom/caverock/androidsvg/SVG$Box;
    .end local v4    # "_x":F
    .end local v5    # "_y":F
    .end local v7    # "_w":F
    .end local v8    # "_h":F
    .end local v9    # "compositing":Z
    :cond_e
    :goto_4
    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Line;)V
    .locals 2
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Line;

    .line 1219
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Line render"

    invoke-static {v1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1221
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1223
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1224
    return-void

    .line 1225
    :cond_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1226
    return-void

    .line 1227
    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-nez v0, :cond_2

    .line 1228
    return-void

    .line 1230
    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Line;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3

    .line 1231
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Line;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1233
    :cond_3
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Line;)Landroid/graphics/Path;

    move-result-object v0

    .line 1234
    .local v0, "path":Landroid/graphics/Path;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1236
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradientsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1237
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1239
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v1

    .line 1241
    .local v1, "compositing":Z
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    .line 1243
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarkers(Lcom/caverock/androidsvg/SVG$GraphicsElement;)V

    .line 1245
    if-eqz v1, :cond_4

    .line 1246
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1247
    :cond_4
    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Path;)V
    .locals 3
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Path;

    .line 1048
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Path render"

    invoke-static {v1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1050
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    if-nez v0, :cond_0

    .line 1051
    return-void

    .line 1053
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1055
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1056
    return-void

    .line 1057
    :cond_1
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1058
    return-void

    .line 1059
    :cond_2
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-nez v0, :cond_3

    .line 1060
    return-void

    .line 1062
    :cond_3
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_4

    .line 1063
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1065
    :cond_4
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    invoke-direct {v0, p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVG$PathDefinition;)V

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->getPath()Landroid/graphics/Path;

    move-result-object v0

    .line 1067
    .local v0, "path":Landroid/graphics/Path;
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Path;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v1, :cond_5

    .line 1068
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculatePathBounds(Landroid/graphics/Path;)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v1

    iput-object v1, p1, Lcom/caverock/androidsvg/SVG$Path;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 1070
    :cond_5
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1072
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradientsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1073
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1075
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v1

    .line 1077
    .local v1, "compositing":Z
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-eqz v2, :cond_6

    .line 1078
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getFillTypeFromState()Landroid/graphics/Path$FillType;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 1079
    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    .line 1081
    :cond_6
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-eqz v2, :cond_7

    .line 1082
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    .line 1084
    :cond_7
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarkers(Lcom/caverock/androidsvg/SVG$GraphicsElement;)V

    .line 1086
    if-eqz v1, :cond_8

    .line 1087
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1088
    :cond_8
    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$PolyLine;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$PolyLine;

    .line 1270
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PolyLine render"

    invoke-static {v1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1272
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1274
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1275
    return-void

    .line 1276
    :cond_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1277
    return-void

    .line 1278
    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-nez v0, :cond_2

    .line 1279
    return-void

    .line 1281
    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3

    .line 1282
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1284
    :cond_3
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$PolyLine;->points:[F

    array-length v0, v0

    .line 1285
    .local v0, "numPoints":I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_4

    .line 1286
    return-void

    .line 1288
    :cond_4
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$PolyLine;)Landroid/graphics/Path;

    move-result-object v1

    .line 1289
    .local v1, "path":Landroid/graphics/Path;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1291
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getFillTypeFromState()Landroid/graphics/Path$FillType;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 1293
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradientsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1294
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1296
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v2

    .line 1298
    .local v2, "compositing":Z
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-eqz v3, :cond_5

    .line 1299
    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    .line 1300
    :cond_5
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-eqz v3, :cond_6

    .line 1301
    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    .line 1303
    :cond_6
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarkers(Lcom/caverock/androidsvg/SVG$GraphicsElement;)V

    .line 1305
    if-eqz v2, :cond_7

    .line 1306
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1307
    :cond_7
    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Polygon;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Polygon;

    .line 1355
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Polygon render"

    invoke-static {v1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1357
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1359
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1360
    return-void

    .line 1361
    :cond_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1362
    return-void

    .line 1363
    :cond_1
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-nez v0, :cond_2

    .line 1364
    return-void

    .line 1366
    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Polygon;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3

    .line 1367
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Polygon;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1369
    :cond_3
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Polygon;->points:[F

    array-length v0, v0

    .line 1370
    .local v0, "numPoints":I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_4

    .line 1371
    return-void

    .line 1373
    :cond_4
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$PolyLine;)Landroid/graphics/Path;

    move-result-object v1

    .line 1374
    .local v1, "path":Landroid/graphics/Path;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1376
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradientsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1377
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1379
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v2

    .line 1381
    .local v2, "compositing":Z
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-eqz v3, :cond_5

    .line 1382
    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    .line 1383
    :cond_5
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-eqz v3, :cond_6

    .line 1384
    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    .line 1386
    :cond_6
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarkers(Lcom/caverock/androidsvg/SVG$GraphicsElement;)V

    .line 1388
    if-eqz v2, :cond_7

    .line 1389
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1390
    :cond_7
    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Rect;)V
    .locals 3
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Rect;

    .line 1104
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Rect render"

    invoke-static {v1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1106
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Rect;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Rect;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Rect;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Rect;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1109
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1111
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1112
    return-void

    .line 1113
    :cond_1
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1114
    return-void

    .line 1116
    :cond_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Rect;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_3

    .line 1117
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Rect;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1119
    :cond_3
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makePathAndBoundingBox(Lcom/caverock/androidsvg/SVG$Rect;)Landroid/graphics/Path;

    move-result-object v0

    .line 1120
    .local v0, "path":Landroid/graphics/Path;
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1122
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradientsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1123
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1125
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v1

    .line 1127
    .local v1, "compositing":Z
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    if-eqz v2, :cond_4

    .line 1128
    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doFilledPath(Lcom/caverock/androidsvg/SVG$SvgElement;Landroid/graphics/Path;)V

    .line 1129
    :cond_4
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    if-eqz v2, :cond_5

    .line 1130
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->doStroke(Landroid/graphics/Path;)V

    .line 1133
    :cond_5
    if-eqz v1, :cond_6

    .line 1134
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1135
    :cond_6
    return-void

    .line 1107
    .end local v0    # "path":Landroid/graphics/Path;
    .end local v1    # "compositing":Z
    :cond_7
    :goto_0
    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Svg;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Svg;

    .line 569
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Svg;->x:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Svg;->y:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makeViewPort(Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v0

    .line 571
    .local v0, "viewPort":Lcom/caverock/androidsvg/SVG$Box;
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Svg;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Svg;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)V

    .line 572
    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Svg;Lcom/caverock/androidsvg/SVG$Box;)V
    .locals 2
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Svg;
    .param p2, "viewPort"    # Lcom/caverock/androidsvg/SVG$Box;

    .line 578
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Svg;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Svg;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)V

    .line 579
    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Svg;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)V
    .locals 4
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Svg;
    .param p2, "viewPort"    # Lcom/caverock/androidsvg/SVG$Box;
    .param p3, "viewBox"    # Lcom/caverock/androidsvg/SVG$Box;
    .param p4, "positioning"    # Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 587
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Svg render"

    invoke-static {v1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 589
    iget v0, p2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_7

    iget v0, p2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 593
    :cond_0
    if-nez p4, :cond_2

    .line 594
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Svg;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Svg;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio;->LETTERBOX:Lcom/caverock/androidsvg/PreserveAspectRatio;

    :goto_0
    move-object p4, v0

    .line 596
    :cond_2
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 598
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_3

    .line 599
    return-void

    .line 601
    :cond_3
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object p2, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 603
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 604
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v1, v1, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v2, v2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v3, v3, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setClipRect(FFFF)V

    .line 607
    :cond_4
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;Lcom/caverock/androidsvg/SVG$Box;)V

    .line 609
    if-eqz p3, :cond_5

    .line 610
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {p0, v1, p3, p4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateViewBoxTransform(Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 611
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    goto :goto_1

    .line 613
    :cond_5
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v1, v1, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v2, v2, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 616
    :goto_1
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v0

    .line 619
    .local v0, "compositing":Z
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->viewportFill()V

    .line 621
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderChildren(Lcom/caverock/androidsvg/SVG$SvgContainer;Z)V

    .line 623
    if-eqz v0, :cond_6

    .line 624
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 626
    :cond_6
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 627
    return-void

    .line 590
    .end local v0    # "compositing":Z
    :cond_7
    :goto_2
    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$SvgObject;)V
    .locals 1
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 324
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$NotDirectlyRendered;

    if-eqz v0, :cond_0

    .line 325
    return-void

    .line 328
    :cond_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 330
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkXMLSpaceAttribute(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 332
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Svg;

    if-eqz v0, :cond_1

    .line 333
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Svg;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Svg;)V

    goto/16 :goto_0

    .line 334
    :cond_1
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Use;

    if-eqz v0, :cond_2

    .line 335
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Use;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Use;)V

    goto/16 :goto_0

    .line 336
    :cond_2
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Switch;

    if-eqz v0, :cond_3

    .line 337
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Switch;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Switch;)V

    goto/16 :goto_0

    .line 338
    :cond_3
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Group;

    if-eqz v0, :cond_4

    .line 339
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Group;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Group;)V

    goto :goto_0

    .line 340
    :cond_4
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Image;

    if-eqz v0, :cond_5

    .line 341
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Image;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Image;)V

    goto :goto_0

    .line 342
    :cond_5
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Path;

    if-eqz v0, :cond_6

    .line 343
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Path;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Path;)V

    goto :goto_0

    .line 344
    :cond_6
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Rect;

    if-eqz v0, :cond_7

    .line 345
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Rect;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Rect;)V

    goto :goto_0

    .line 346
    :cond_7
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Circle;

    if-eqz v0, :cond_8

    .line 347
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Circle;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Circle;)V

    goto :goto_0

    .line 348
    :cond_8
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Ellipse;

    if-eqz v0, :cond_9

    .line 349
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Ellipse;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Ellipse;)V

    goto :goto_0

    .line 350
    :cond_9
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Line;

    if-eqz v0, :cond_a

    .line 351
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Line;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Line;)V

    goto :goto_0

    .line 352
    :cond_a
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Polygon;

    if-eqz v0, :cond_b

    .line 353
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Polygon;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Polygon;)V

    goto :goto_0

    .line 354
    :cond_b
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$PolyLine;

    if-eqz v0, :cond_c

    .line 355
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$PolyLine;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$PolyLine;)V

    goto :goto_0

    .line 356
    :cond_c
    instance-of v0, p1, Lcom/caverock/androidsvg/SVG$Text;

    if-eqz v0, :cond_d

    .line 357
    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/SVG$Text;

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Text;)V

    .line 361
    :cond_d
    :goto_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 362
    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Switch;)V
    .locals 2
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Switch;

    .line 814
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Switch render"

    invoke-static {v1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 816
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 818
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_0

    .line 819
    return-void

    .line 821
    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Switch;->transform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_1

    .line 822
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Switch;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 825
    :cond_1
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 827
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v0

    .line 829
    .local v0, "compositing":Z
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderSwitchChild(Lcom/caverock/androidsvg/SVG$Switch;)V

    .line 831
    if-eqz v0, :cond_2

    .line 832
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 834
    :cond_2
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 835
    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Symbol;Lcom/caverock/androidsvg/SVG$Box;)V
    .locals 5
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Symbol;
    .param p2, "viewPort"    # Lcom/caverock/androidsvg/SVG$Box;

    .line 1849
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Symbol render"

    invoke-static {v1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1851
    iget v0, p2, Lcom/caverock/androidsvg/SVG$Box;->width:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    iget v0, p2, Lcom/caverock/androidsvg/SVG$Box;->height:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1855
    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Symbol;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Symbol;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio;->LETTERBOX:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 1857
    .local v0, "positioning":Lcom/caverock/androidsvg/PreserveAspectRatio;
    :goto_0
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v1, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1859
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object p2, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 1861
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1862
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v1, v1, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v2, v2, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v3, v3, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v4, v4, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setClipRect(FFFF)V

    .line 1865
    :cond_2
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Symbol;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v1, :cond_3

    .line 1866
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Symbol;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {p0, v2, v3, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateViewBoxTransform(Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1867
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Symbol;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v2, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    goto :goto_1

    .line 1869
    :cond_3
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v2, v2, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iget v3, v3, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1872
    :goto_1
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v1

    .line 1874
    .local v1, "compositing":Z
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderChildren(Lcom/caverock/androidsvg/SVG$SvgContainer;Z)V

    .line 1876
    if-eqz v1, :cond_4

    .line 1877
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1879
    :cond_4
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1880
    return-void

    .line 1852
    .end local v0    # "positioning":Lcom/caverock/androidsvg/PreserveAspectRatio;
    .end local v1    # "compositing":Z
    :cond_5
    :goto_2
    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Text;)V
    .locals 11
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Text;

    .line 1398
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Text render"

    invoke-static {v2, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1400
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v1, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1402
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1403
    return-void

    .line 1405
    :cond_0
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Text;->transform:Landroid/graphics/Matrix;

    if-eqz v1, :cond_1

    .line 1406
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Text;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1409
    :cond_1
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Text;->x:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Text;->x:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Text;->x:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v2

    .line 1410
    .local v1, "x":F
    :goto_1
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Text;->y:Ljava/util/List;

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Text;->y:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Text;->y:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v3, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    goto :goto_3

    :cond_5
    :goto_2
    move v3, v2

    .line 1411
    .local v3, "y":F
    :goto_3
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Text;->dx:Ljava/util/List;

    if-eqz v4, :cond_7

    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Text;->dx:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_6

    goto :goto_4

    :cond_6
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Text;->dx:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    goto :goto_5

    :cond_7
    :goto_4
    move v4, v2

    .line 1412
    .local v4, "dx":F
    :goto_5
    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$Text;->dy:Ljava/util/List;

    if-eqz v5, :cond_9

    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$Text;->dy:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_8

    goto :goto_6

    :cond_8
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Text;->dy:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    :cond_9
    :goto_6
    move v0, v2

    .line 1415
    .local v0, "dy":F
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getAnchorPosition()Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    move-result-object v2

    .line 1416
    .local v2, "anchor":Lcom/caverock/androidsvg/SVG$Style$TextAnchor;
    sget-object v5, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-eq v2, v5, :cond_b

    .line 1417
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateTextWidth(Lcom/caverock/androidsvg/SVG$TextContainer;)F

    move-result v5

    .line 1418
    .local v5, "textWidth":F
    sget-object v6, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-ne v2, v6, :cond_a

    .line 1419
    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v5, v6

    sub-float/2addr v1, v6

    goto :goto_7

    .line 1421
    :cond_a
    sub-float/2addr v1, v5

    .line 1425
    .end local v5    # "textWidth":F
    :cond_b
    :goto_7
    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$Text;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v5, :cond_c

    .line 1426
    new-instance v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;

    invoke-direct {v5, p0, v1, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FF)V

    .line 1427
    .local v5, "proc":Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;
    invoke-direct {p0, p1, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 1428
    new-instance v6, Lcom/caverock/androidsvg/SVG$Box;

    iget-object v7, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    iget-object v8, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    iget-object v9, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    iget-object v10, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;->bbox:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v10

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v6, p1, Lcom/caverock/androidsvg/SVG$Text;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 1430
    .end local v5    # "proc":Lcom/caverock/androidsvg/SVGAndroidRenderer$TextBoundsCalculator;
    :cond_c
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1432
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradientsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1433
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1435
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v5

    .line 1437
    .local v5, "compositing":Z
    new-instance v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;

    add-float v7, v1, v4

    add-float v8, v3, v0

    invoke-direct {v6, p0, v7, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PlainTextDrawer;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;FF)V

    invoke-direct {p0, p1, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 1439
    if-eqz v5, :cond_d

    .line 1440
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1441
    :cond_d
    return-void
.end method

.method private render(Lcom/caverock/androidsvg/SVG$Use;)V
    .locals 9
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Use;

    .line 977
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Use render"

    invoke-static {v1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 979
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    .line 980
    invoke-virtual {v0}, Lcom/caverock/androidsvg/SVG$Length;->isZero()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 981
    :cond_1
    return-void

    .line 983
    :cond_2
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 985
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v0

    if-nez v0, :cond_3

    .line 986
    return-void

    .line 989
    :cond_3
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$Use;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->href:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v0

    .line 990
    .local v0, "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    if-nez v0, :cond_4

    .line 991
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->href:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Use reference \'%s\' not found"

    invoke-static {v2, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 992
    return-void

    .line 995
    :cond_4
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->transform:Landroid/graphics/Matrix;

    if-eqz v1, :cond_5

    .line 996
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Use;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1000
    :cond_5
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->x:Lcom/caverock/androidsvg/SVG$Length;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Use;->x:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v1, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v1

    goto :goto_0

    :cond_6
    move v1, v2

    .line 1001
    .local v1, "_x":F
    :goto_0
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Use;->y:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v3, :cond_7

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$Use;->y:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v2, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v2

    .line 1002
    .local v2, "_y":F
    :cond_7
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1004
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForClipPath(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1006
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v3

    .line 1008
    .local v3, "compositing":Z
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentPush(Lcom/caverock/androidsvg/SVG$SvgContainer;)V

    .line 1010
    instance-of v4, v0, Lcom/caverock/androidsvg/SVG$Svg;

    const/4 v5, 0x0

    if-eqz v4, :cond_8

    .line 1012
    move-object v4, v0

    check-cast v4, Lcom/caverock/androidsvg/SVG$Svg;

    .line 1013
    .local v4, "svgElem":Lcom/caverock/androidsvg/SVG$Svg;
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-direct {p0, v5, v5, v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makeViewPort(Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v5

    .line 1015
    .local v5, "viewPort":Lcom/caverock/androidsvg/SVG$Box;
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 1016
    invoke-direct {p0, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Svg;Lcom/caverock/androidsvg/SVG$Box;)V

    .line 1017
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 1018
    .end local v4    # "svgElem":Lcom/caverock/androidsvg/SVG$Svg;
    .end local v5    # "viewPort":Lcom/caverock/androidsvg/SVG$Box;
    goto :goto_3

    .line 1019
    :cond_8
    instance-of v4, v0, Lcom/caverock/androidsvg/SVG$Symbol;

    if-eqz v4, :cond_b

    .line 1021
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    const/high16 v6, 0x42c80000    # 100.0f

    if-eqz v4, :cond_9

    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Use;->width:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_1

    :cond_9
    new-instance v4, Lcom/caverock/androidsvg/SVG$Length;

    sget-object v7, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v4, v6, v7}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    .line 1022
    .local v4, "_w":Lcom/caverock/androidsvg/SVG$Length;
    :goto_1
    iget-object v7, p1, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v7, :cond_a

    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Use;->height:Lcom/caverock/androidsvg/SVG$Length;

    goto :goto_2

    :cond_a
    new-instance v7, Lcom/caverock/androidsvg/SVG$Length;

    sget-object v8, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v7, v6, v8}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    move-object v6, v7

    .line 1023
    .local v6, "_h":Lcom/caverock/androidsvg/SVG$Length;
    :goto_2
    invoke-direct {p0, v5, v5, v4, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->makeViewPort(Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;Lcom/caverock/androidsvg/SVG$Length;)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v5

    .line 1025
    .restart local v5    # "viewPort":Lcom/caverock/androidsvg/SVG$Box;
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 1026
    move-object v7, v0

    check-cast v7, Lcom/caverock/androidsvg/SVG$Symbol;

    invoke-direct {p0, v7, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Symbol;Lcom/caverock/androidsvg/SVG$Box;)V

    .line 1027
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 1028
    .end local v4    # "_w":Lcom/caverock/androidsvg/SVG$Length;
    .end local v5    # "viewPort":Lcom/caverock/androidsvg/SVG$Box;
    .end local v6    # "_h":Lcom/caverock/androidsvg/SVG$Length;
    goto :goto_3

    .line 1031
    :cond_b
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 1034
    :goto_3
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentPop()V

    .line 1036
    if-eqz v3, :cond_c

    .line 1037
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1039
    :cond_c
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1040
    return-void
.end method

.method private renderChildren(Lcom/caverock/androidsvg/SVG$SvgContainer;Z)V
    .locals 2
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgContainer;
    .param p2, "isContainer"    # Z

    .line 370
    if-eqz p2, :cond_0

    .line 371
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentPush(Lcom/caverock/androidsvg/SVG$SvgContainer;)V

    .line 374
    :cond_0
    invoke-interface {p1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 375
    .local v1, "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 376
    .end local v1    # "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    goto :goto_0

    .line 378
    :cond_1
    if-eqz p2, :cond_2

    .line 379
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentPop()V

    .line 381
    :cond_2
    return-void
.end method

.method private renderMarker(Lcom/caverock/androidsvg/SVG$Marker;Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)V
    .locals 20
    .param p1, "marker"    # Lcom/caverock/androidsvg/SVG$Marker;
    .param p2, "pos"    # Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    .line 3062
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 3065
    .local v3, "angle":F
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 3068
    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$Marker;->orient:Ljava/lang/Float;

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 3070
    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$Marker;->orient:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3072
    iget v4, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    iget v4, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_2

    .line 3073
    :cond_0
    iget v4, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dy:F

    float-to-double v6, v4

    iget v4, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->dx:F

    float-to-double v8, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    double-to-float v3, v6

    goto :goto_0

    .line 3076
    :cond_1
    iget-object v4, v1, Lcom/caverock/androidsvg/SVG$Marker;->orient:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 3080
    :cond_2
    :goto_0
    iget-boolean v4, v1, Lcom/caverock/androidsvg/SVG$Marker;->markerUnitsAreUser:Z

    if-eqz v4, :cond_3

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    iget-object v4, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    iget v6, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->dpi:F

    invoke-virtual {v4, v6}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(F)F

    move-result v4

    .line 3084
    .local v4, "unitsScale":F
    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v6

    iput-object v6, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 3086
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 3087
    .local v6, "m":Landroid/graphics/Matrix;
    iget v7, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->x:F

    iget v8, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->y:F

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 3088
    invoke-virtual {v6, v3}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 3089
    invoke-virtual {v6, v4, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 3091
    iget-object v7, v1, Lcom/caverock/androidsvg/SVG$Marker;->refX:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v7, :cond_4

    iget-object v7, v1, Lcom/caverock/androidsvg/SVG$Marker;->refX:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v7, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v7

    goto :goto_2

    :cond_4
    move v7, v5

    .line 3092
    .local v7, "_refX":F
    :goto_2
    iget-object v8, v1, Lcom/caverock/androidsvg/SVG$Marker;->refY:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v8, :cond_5

    iget-object v8, v1, Lcom/caverock/androidsvg/SVG$Marker;->refY:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v8, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v8

    goto :goto_3

    :cond_5
    move v8, v5

    .line 3093
    .local v8, "_refY":F
    :goto_3
    iget-object v9, v1, Lcom/caverock/androidsvg/SVG$Marker;->markerWidth:Lcom/caverock/androidsvg/SVG$Length;

    const/high16 v10, 0x40400000    # 3.0f

    if-eqz v9, :cond_6

    iget-object v9, v1, Lcom/caverock/androidsvg/SVG$Marker;->markerWidth:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v9, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v9

    goto :goto_4

    :cond_6
    move v9, v10

    .line 3094
    .local v9, "_markerWidth":F
    :goto_4
    iget-object v11, v1, Lcom/caverock/androidsvg/SVG$Marker;->markerHeight:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v11, :cond_7

    iget-object v10, v1, Lcom/caverock/androidsvg/SVG$Marker;->markerHeight:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v10, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v10

    .line 3096
    .local v10, "_markerHeight":F
    :cond_7
    iget-object v11, v1, Lcom/caverock/androidsvg/SVG$Marker;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v11, :cond_c

    .line 3103
    iget-object v5, v1, Lcom/caverock/androidsvg/SVG$Marker;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v5, v5, Lcom/caverock/androidsvg/SVG$Box;->width:F

    div-float v5, v9, v5

    .line 3104
    .local v5, "xScale":F
    iget-object v11, v1, Lcom/caverock/androidsvg/SVG$Marker;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v11, v11, Lcom/caverock/androidsvg/SVG$Box;->height:F

    div-float v11, v10, v11

    .line 3107
    .local v11, "yScale":F
    iget-object v12, v1, Lcom/caverock/androidsvg/SVG$Marker;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-eqz v12, :cond_8

    iget-object v12, v1, Lcom/caverock/androidsvg/SVG$Marker;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    goto :goto_5

    :cond_8
    sget-object v12, Lcom/caverock/androidsvg/PreserveAspectRatio;->LETTERBOX:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 3108
    .local v12, "positioning":Lcom/caverock/androidsvg/PreserveAspectRatio;
    :goto_5
    sget-object v13, Lcom/caverock/androidsvg/PreserveAspectRatio;->STRETCH:Lcom/caverock/androidsvg/PreserveAspectRatio;

    invoke-virtual {v12, v13}, Lcom/caverock/androidsvg/PreserveAspectRatio;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a

    .line 3110
    invoke-virtual {v12}, Lcom/caverock/androidsvg/PreserveAspectRatio;->getScale()Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    move-result-object v13

    sget-object v14, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->slice:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    if-ne v13, v14, :cond_9

    invoke-static {v5, v11}, Ljava/lang/Math;->max(FF)F

    move-result v13

    goto :goto_6

    :cond_9
    invoke-static {v5, v11}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 3111
    .local v13, "aspectScale":F
    :goto_6
    move v11, v13

    move v5, v13

    .line 3115
    .end local v13    # "aspectScale":F
    :cond_a
    neg-float v13, v7

    mul-float/2addr v13, v5

    neg-float v14, v8

    mul-float/2addr v14, v11

    invoke-virtual {v6, v13, v14}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 3116
    iget-object v13, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v13, v6}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 3120
    iget-object v13, v1, Lcom/caverock/androidsvg/SVG$Marker;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v13, v13, Lcom/caverock/androidsvg/SVG$Box;->width:F

    mul-float/2addr v13, v5

    .line 3121
    .local v13, "imageW":F
    iget-object v14, v1, Lcom/caverock/androidsvg/SVG$Marker;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v14, v14, Lcom/caverock/androidsvg/SVG$Box;->height:F

    mul-float/2addr v14, v11

    .line 3122
    .local v14, "imageH":F
    const/4 v15, 0x0

    .line 3123
    .local v15, "xOffset":F
    const/16 v16, 0x0

    .line 3124
    .local v16, "yOffset":F
    sget-object v17, Lcom/caverock/androidsvg/SVGAndroidRenderer$1;->$SwitchMap$com$caverock$androidsvg$PreserveAspectRatio$Alignment:[I

    invoke-virtual {v12}, Lcom/caverock/androidsvg/PreserveAspectRatio;->getAlignment()Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v18

    aget v17, v17, v18

    const/high16 v18, 0x40000000    # 2.0f

    packed-switch v17, :pswitch_data_0

    goto :goto_7

    .line 3134
    :pswitch_0
    sub-float v17, v9, v13

    sub-float v15, v15, v17

    .line 3135
    goto :goto_7

    .line 3129
    :pswitch_1
    sub-float v17, v9, v13

    div-float v17, v17, v18

    sub-float v15, v15, v17

    .line 3130
    nop

    .line 3141
    :goto_7
    sget-object v17, Lcom/caverock/androidsvg/SVGAndroidRenderer$1;->$SwitchMap$com$caverock$androidsvg$PreserveAspectRatio$Alignment:[I

    invoke-virtual {v12}, Lcom/caverock/androidsvg/PreserveAspectRatio;->getAlignment()Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->ordinal()I

    move-result v19

    aget v17, v17, v19

    packed-switch v17, :pswitch_data_1

    :pswitch_2
    move/from16 v2, v16

    goto :goto_8

    .line 3151
    :pswitch_3
    sub-float v17, v10, v14

    sub-float v16, v16, v17

    .line 3152
    move/from16 v2, v16

    goto :goto_8

    .line 3146
    :pswitch_4
    sub-float v17, v10, v14

    div-float v17, v17, v18

    sub-float v16, v16, v17

    .line 3147
    move/from16 v2, v16

    .line 3158
    .end local v16    # "yOffset":F
    .local v2, "yOffset":F
    :goto_8
    move/from16 v16, v3

    .end local v3    # "angle":F
    .local v16, "angle":F
    iget-object v3, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_b

    .line 3159
    invoke-direct {v0, v15, v2, v9, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setClipRect(FFFF)V

    .line 3162
    :cond_b
    invoke-virtual {v6}, Landroid/graphics/Matrix;->reset()V

    .line 3163
    invoke-virtual {v6, v5, v11}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 3164
    iget-object v3, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v6}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 3165
    .end local v2    # "yOffset":F
    .end local v5    # "xScale":F
    .end local v11    # "yScale":F
    .end local v12    # "positioning":Lcom/caverock/androidsvg/PreserveAspectRatio;
    .end local v13    # "imageW":F
    .end local v14    # "imageH":F
    .end local v15    # "xOffset":F
    goto :goto_9

    .line 3170
    .end local v16    # "angle":F
    .restart local v3    # "angle":F
    :cond_c
    move/from16 v16, v3

    .end local v3    # "angle":F
    .restart local v16    # "angle":F
    neg-float v2, v7

    neg-float v3, v8

    invoke-virtual {v6, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 3171
    iget-object v2, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v6}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 3173
    iget-object v2, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v2, v2, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_d

    .line 3174
    invoke-direct {v0, v5, v5, v9, v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setClipRect(FFFF)V

    .line 3178
    :cond_d
    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v2

    .line 3180
    .local v2, "compositing":Z
    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderChildren(Lcom/caverock/androidsvg/SVG$SvgContainer;Z)V

    .line 3182
    if-eqz v2, :cond_e

    .line 3183
    invoke-direct/range {p0 .. p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 3185
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 3186
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private renderMarkers(Lcom/caverock/androidsvg/SVG$GraphicsElement;)V
    .locals 10
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$GraphicsElement;

    .line 2948
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2949
    return-void

    .line 2951
    :cond_0
    const/4 v0, 0x0

    .line 2952
    .local v0, "_markerStart":Lcom/caverock/androidsvg/SVG$Marker;
    const/4 v1, 0x0

    .line 2953
    .local v1, "_markerMid":Lcom/caverock/androidsvg/SVG$Marker;
    const/4 v2, 0x0

    .line 2955
    .local v2, "_markerEnd":Lcom/caverock/androidsvg/SVG$Marker;
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    const-string v4, "Marker reference \'%s\' not found"

    if-eqz v3, :cond_2

    .line 2956
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v3

    .line 2957
    .local v3, "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    if-eqz v3, :cond_1

    .line 2958
    move-object v0, v3

    check-cast v0, Lcom/caverock/androidsvg/SVG$Marker;

    goto :goto_0

    .line 2960
    :cond_1
    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2963
    .end local v3    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 2964
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v3

    .line 2965
    .restart local v3    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    if-eqz v3, :cond_3

    .line 2966
    move-object v1, v3

    check-cast v1, Lcom/caverock/androidsvg/SVG$Marker;

    goto :goto_1

    .line 2968
    :cond_3
    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2971
    .end local v3    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 2972
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$GraphicsElement;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v3

    .line 2973
    .restart local v3    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    if-eqz v3, :cond_5

    .line 2974
    move-object v2, v3

    check-cast v2, Lcom/caverock/androidsvg/SVG$Marker;

    goto :goto_2

    .line 2976
    :cond_5
    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2980
    .end local v3    # "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_6
    :goto_2
    instance-of v3, p1, Lcom/caverock/androidsvg/SVG$Path;

    if-eqz v3, :cond_7

    .line 2981
    new-instance v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;

    move-object v4, p1

    check-cast v4, Lcom/caverock/androidsvg/SVG$Path;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    invoke-direct {v3, p0, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVG$PathDefinition;)V

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerPositionCalculator;->getMarkers()Ljava/util/List;

    move-result-object v3

    .local v3, "markers":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;>;"
    goto :goto_3

    .line 2982
    .end local v3    # "markers":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;>;"
    :cond_7
    instance-of v3, p1, Lcom/caverock/androidsvg/SVG$Line;

    if-eqz v3, :cond_8

    .line 2983
    move-object v3, p1

    check-cast v3, Lcom/caverock/androidsvg/SVG$Line;

    invoke-direct {p0, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateMarkerPositions(Lcom/caverock/androidsvg/SVG$Line;)Ljava/util/List;

    move-result-object v3

    .restart local v3    # "markers":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;>;"
    goto :goto_3

    .line 2985
    .end local v3    # "markers":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;>;"
    :cond_8
    move-object v3, p1

    check-cast v3, Lcom/caverock/androidsvg/SVG$PolyLine;

    invoke-direct {p0, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateMarkerPositions(Lcom/caverock/androidsvg/SVG$PolyLine;)Ljava/util/List;

    move-result-object v3

    .line 2987
    .restart local v3    # "markers":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;>;"
    :goto_3
    if-nez v3, :cond_9

    .line 2988
    return-void

    .line 2990
    :cond_9
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 2991
    .local v4, "markerCount":I
    if-nez v4, :cond_a

    .line 2992
    return-void

    .line 2995
    :cond_a
    iget-object v5, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v5, v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v7, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    iput-object v8, v6, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    iput-object v8, v5, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    .line 2997
    const/4 v5, 0x0

    if-eqz v0, :cond_b

    .line 2998
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-direct {p0, v0, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarker(Lcom/caverock/androidsvg/SVG$Marker;Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)V

    .line 3000
    :cond_b
    if-eqz v1, :cond_d

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_d

    .line 3002
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    .line 3003
    .local v5, "lastPos":Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;
    const/4 v6, 0x1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    .line 3005
    .local v6, "thisPos":Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_4
    add-int/lit8 v8, v4, -0x1

    if-ge v7, v8, :cond_d

    .line 3007
    add-int/lit8 v8, v7, 0x1

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    .line 3008
    .local v8, "nextPos":Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;
    iget-boolean v9, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;->isAmbiguous:Z

    if-eqz v9, :cond_c

    .line 3009
    invoke-direct {p0, v5, v6, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->realignMarkerMid(Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    move-result-object v6

    .line 3010
    :cond_c
    invoke-direct {p0, v1, v6}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarker(Lcom/caverock/androidsvg/SVG$Marker;Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)V

    .line 3011
    move-object v5, v6

    .line 3012
    move-object v6, v8

    .line 3005
    .end local v8    # "nextPos":Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 3016
    .end local v5    # "lastPos":Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;
    .end local v6    # "thisPos":Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;
    .end local v7    # "i":I
    :cond_d
    if-eqz v2, :cond_e

    .line 3017
    add-int/lit8 v5, v4, -0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;

    invoke-direct {p0, v2, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderMarker(Lcom/caverock/androidsvg/SVG$Marker;Lcom/caverock/androidsvg/SVGAndroidRenderer$MarkerVector;)V

    .line 3018
    :cond_e
    return-void
.end method

.method private renderMask(Lcom/caverock/androidsvg/SVG$Mask;Lcom/caverock/androidsvg/SVG$SvgElement;)V
    .locals 8
    .param p1, "mask"    # Lcom/caverock/androidsvg/SVG$Mask;
    .param p2, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElement;

    .line 4519
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Mask render"

    invoke-static {v2, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4521
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Mask;->maskUnitsAreUser:Ljava/lang/Boolean;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$Mask;->maskUnitsAreUser:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    .line 4524
    .local v1, "maskUnitsAreUser":Z
    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_3

    .line 4526
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Mask;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v4, :cond_1

    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Mask;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    goto :goto_1

    :cond_1
    iget-object v4, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v4, v4, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 4527
    .local v4, "w":F
    :goto_1
    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$Mask;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v5, :cond_2

    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$Mask;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v5, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v5

    goto :goto_2

    :cond_2
    iget-object v5, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v5, v5, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .local v5, "h":F
    :goto_2
    goto :goto_4

    .line 4536
    .end local v4    # "w":F
    .end local v5    # "h":F
    :cond_3
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Mask;->width:Lcom/caverock/androidsvg/SVG$Length;

    const v5, 0x3f99999a    # 1.2f

    if-eqz v4, :cond_4

    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$Mask;->width:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, p0, v3}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v4

    goto :goto_3

    :cond_4
    move v4, v5

    .line 4537
    .restart local v4    # "w":F
    :goto_3
    iget-object v6, p1, Lcom/caverock/androidsvg/SVG$Mask;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v6, :cond_5

    iget-object v5, p1, Lcom/caverock/androidsvg/SVG$Mask;->height:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v5, p0, v3}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v5

    .line 4540
    .restart local v5    # "h":F
    :cond_5
    iget-object v6, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v6, v6, Lcom/caverock/androidsvg/SVG$Box;->width:F

    mul-float/2addr v4, v6

    .line 4541
    iget-object v6, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v6, v6, Lcom/caverock/androidsvg/SVG$Box;->height:F

    mul-float/2addr v5, v6

    .line 4543
    :goto_4
    const/4 v6, 0x0

    cmpl-float v7, v4, v6

    if-eqz v7, :cond_a

    cmpl-float v6, v5, v6

    if-nez v6, :cond_6

    goto :goto_6

    .line 4547
    :cond_6
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 4549
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->findInheritFromAncestorState(Lcom/caverock/androidsvg/SVG$SvgObject;)Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    move-result-object v6

    iput-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 4553
    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, v6, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    .line 4556
    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Mask;->maskContentUnitsAreUser:Ljava/lang/Boolean;

    if-eqz v3, :cond_8

    iget-object v3, p1, Lcom/caverock/androidsvg/SVG$Mask;->maskContentUnitsAreUser:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_5

    :cond_7
    move v2, v0

    .line 4557
    .local v2, "maskContentUnitsAreUser":Z
    :cond_8
    :goto_5
    if-nez v2, :cond_9

    .line 4558
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v6, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v6, v6, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    iget-object v7, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v7, v7, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4559
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    iget-object v6, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v6, v6, Lcom/caverock/androidsvg/SVG$Box;->width:F

    iget-object v7, p2, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v7, v7, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 4563
    :cond_9
    invoke-direct {p0, p1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->renderChildren(Lcom/caverock/androidsvg/SVG$SvgContainer;Z)V

    .line 4566
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 4567
    return-void

    .line 4544
    .end local v2    # "maskContentUnitsAreUser":Z
    :cond_a
    :goto_6
    return-void
.end method

.method private renderSwitchChild(Lcom/caverock/androidsvg/SVG$Switch;)V
    .locals 13
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$Switch;

    .line 840
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 841
    .local v0, "deviceLanguage":Ljava/lang/String;
    invoke-static {}, Lcom/caverock/androidsvg/SVG;->getFileResolver()Lcom/caverock/androidsvg/SVGExternalFileResolver;

    move-result-object v1

    .line 844
    .local v1, "fileResolver":Lcom/caverock/androidsvg/SVGExternalFileResolver;
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG$Switch;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 847
    .local v3, "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    instance-of v4, v3, Lcom/caverock/androidsvg/SVG$SvgConditional;

    if-nez v4, :cond_1

    .line 848
    goto :goto_0

    .line 850
    :cond_1
    move-object v4, v3

    check-cast v4, Lcom/caverock/androidsvg/SVG$SvgConditional;

    .line 853
    .local v4, "condObj":Lcom/caverock/androidsvg/SVG$SvgConditional;
    invoke-interface {v4}, Lcom/caverock/androidsvg/SVG$SvgConditional;->getRequiredExtensions()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 854
    goto :goto_0

    .line 857
    :cond_2
    invoke-interface {v4}, Lcom/caverock/androidsvg/SVG$SvgConditional;->getSystemLanguage()Ljava/util/Set;

    move-result-object v5

    .line 858
    .local v5, "syslang":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 859
    goto :goto_0

    .line 862
    :cond_3
    invoke-interface {v4}, Lcom/caverock/androidsvg/SVG$SvgConditional;->getRequiredFeatures()Ljava/util/Set;

    move-result-object v6

    .line 863
    .local v6, "reqfeat":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v6, :cond_5

    .line 864
    sget-object v7, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    if-nez v7, :cond_4

    .line 865
    invoke-static {}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->initialiseSupportedFeaturesMap()V

    .line 866
    :cond_4
    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Lcom/caverock/androidsvg/SVGAndroidRenderer;->supportedFeatures:Ljava/util/HashSet;

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->containsAll(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 867
    goto :goto_0

    .line 871
    :cond_5
    invoke-interface {v4}, Lcom/caverock/androidsvg/SVG$SvgConditional;->getRequiredFormats()Ljava/util/Set;

    move-result-object v7

    .line 872
    .local v7, "reqfmts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v7, :cond_8

    .line 873
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    if-nez v1, :cond_6

    .line 874
    goto :goto_0

    .line 875
    :cond_6
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 876
    .local v9, "mimeType":Ljava/lang/String;
    invoke-virtual {v1, v9}, Lcom/caverock/androidsvg/SVGExternalFileResolver;->isFormatSupported(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 877
    goto :goto_0

    .line 878
    .end local v9    # "mimeType":Ljava/lang/String;
    :cond_7
    goto :goto_1

    .line 881
    :cond_8
    invoke-interface {v4}, Lcom/caverock/androidsvg/SVG$SvgConditional;->getRequiredFonts()Ljava/util/Set;

    move-result-object v8

    .line 882
    .local v8, "reqfonts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v8, :cond_b

    .line 883
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    if-nez v1, :cond_9

    .line 884
    goto :goto_0

    .line 885
    :cond_9
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 886
    .local v10, "fontName":Ljava/lang/String;
    iget-object v11, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v11, v11, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v11, v11, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v12, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v12, v12, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v12, v12, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v10, v11, v12}, Lcom/caverock/androidsvg/SVGExternalFileResolver;->resolveFont(Ljava/lang/String;ILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v11

    if-nez v11, :cond_a

    .line 887
    goto/16 :goto_0

    .line 888
    .end local v10    # "fontName":Ljava/lang/String;
    :cond_a
    goto :goto_2

    .line 892
    :cond_b
    invoke-direct {p0, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 893
    nop

    .line 895
    .end local v3    # "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    .end local v4    # "condObj":Lcom/caverock/androidsvg/SVG$SvgConditional;
    .end local v5    # "syslang":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "reqfeat":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "reqfmts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "reqfonts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_c
    return-void
.end method

.method private renderTextPath(Lcom/caverock/androidsvg/SVG$TextPath;)V
    .locals 9
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$TextPath;

    .line 1635
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "TextPath render"

    invoke-static {v2, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1637
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {p0, v1, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V

    .line 1639
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->display()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1640
    return-void

    .line 1641
    :cond_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->visible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1642
    return-void

    .line 1644
    :cond_1
    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$TextPath;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$TextPath;->href:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/caverock/androidsvg/SVG;->resolveIRI(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgObject;

    move-result-object v1

    .line 1645
    .local v1, "ref":Lcom/caverock/androidsvg/SVG$SvgObject;
    if-nez v1, :cond_2

    .line 1647
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$TextPath;->href:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "TextPath reference \'%s\' not found"

    invoke-static {v2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1648
    return-void

    .line 1651
    :cond_2
    move-object v2, v1

    check-cast v2, Lcom/caverock/androidsvg/SVG$Path;

    .line 1652
    .local v2, "pathObj":Lcom/caverock/androidsvg/SVG$Path;
    new-instance v3, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;

    iget-object v4, v2, Lcom/caverock/androidsvg/SVG$Path;->d:Lcom/caverock/androidsvg/SVG$PathDefinition;

    invoke-direct {v3, p0, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVG$PathDefinition;)V

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathConverter;->getPath()Landroid/graphics/Path;

    move-result-object v3

    .line 1654
    .local v3, "path":Landroid/graphics/Path;
    iget-object v4, v2, Lcom/caverock/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    if-eqz v4, :cond_3

    .line 1655
    iget-object v4, v2, Lcom/caverock/androidsvg/SVG$Path;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 1657
    :cond_3
    new-instance v4, Landroid/graphics/PathMeasure;

    invoke-direct {v4, v3, v0}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    move-object v0, v4

    .line 1659
    .local v0, "measure":Landroid/graphics/PathMeasure;
    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$TextPath;->startOffset:Lcom/caverock/androidsvg/SVG$Length;

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    iget-object v4, p1, Lcom/caverock/androidsvg/SVG$TextPath;->startOffset:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v6

    invoke-virtual {v4, p0, v6}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v4

    goto :goto_0

    :cond_4
    move v4, v5

    .line 1662
    .local v4, "startOffset":F
    :goto_0
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getAnchorPosition()Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    move-result-object v6

    .line 1663
    .local v6, "anchor":Lcom/caverock/androidsvg/SVG$Style$TextAnchor;
    sget-object v7, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-eq v6, v7, :cond_6

    .line 1664
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->calculateTextWidth(Lcom/caverock/androidsvg/SVG$TextContainer;)F

    move-result v7

    .line 1665
    .local v7, "textWidth":F
    sget-object v8, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Middle:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    if-ne v6, v8, :cond_5

    .line 1666
    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v7, v8

    sub-float/2addr v4, v8

    goto :goto_1

    .line 1668
    :cond_5
    sub-float/2addr v4, v7

    .line 1672
    .end local v7    # "textWidth":F
    :cond_6
    :goto_1
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG$TextPath;->getTextRoot()Lcom/caverock/androidsvg/SVG$TextRoot;

    move-result-object v7

    check-cast v7, Lcom/caverock/androidsvg/SVG$SvgElement;

    invoke-direct {p0, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkForGradientsAndPatterns(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1674
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->pushLayer()Z

    move-result v7

    .line 1676
    .local v7, "compositing":Z
    new-instance v8, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;

    invoke-direct {v8, p0, v3, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer$PathTextDrawer;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Landroid/graphics/Path;FF)V

    invoke-direct {p0, p1, v8}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->enumerateTextSpans(Lcom/caverock/androidsvg/SVG$TextContainer;Lcom/caverock/androidsvg/SVGAndroidRenderer$TextProcessor;)V

    .line 1678
    if-eqz v7, :cond_7

    .line 1679
    invoke-direct {p0, p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->popLayer(Lcom/caverock/androidsvg/SVG$SvgElement;)V

    .line 1680
    :cond_7
    return-void
.end method

.method private requiresCompositing()Z
    .locals 2

    .line 801
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private resetState()V
    .locals 3

    .line 174
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 175
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    .line 178
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-static {}, Lcom/caverock/androidsvg/SVG$Style;->getDefaultStyle()Lcom/caverock/androidsvg/SVG$Style;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V

    .line 180
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 182
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->spacePreserve:Z

    .line 185
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    new-instance v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {v1, p0, v2}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/util/Stack;

    .line 190
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/util/Stack;

    .line 191
    return-void
.end method

.method private setClipRect(FFFF)V
    .locals 5
    .param p1, "minX"    # F
    .param p2, "minY"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .line 2468
    move v0, p1

    .line 2469
    .local v0, "left":F
    move v1, p2

    .line 2470
    .local v1, "top":F
    add-float v2, p1, p3

    .line 2471
    .local v2, "right":F
    add-float v3, p2, p4

    .line 2473
    .local v3, "bottom":F
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    if-eqz v4, :cond_0

    .line 2474
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$CSSClipRect;->left:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    add-float/2addr v0, v4

    .line 2475
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$CSSClipRect;->top:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    add-float/2addr v1, v4

    .line 2476
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$CSSClipRect;->right:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    sub-float/2addr v2, v4

    .line 2477
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$CSSClipRect;->bottom:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v4

    sub-float/2addr v3, v4

    .line 2480
    :cond_0
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 2481
    return-void
.end method

.method private setPaintColour(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/caverock/androidsvg/SVG$SvgPaint;)V
    .locals 3
    .param p1, "state"    # Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    .param p2, "isFill"    # Z
    .param p3, "paint"    # Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 2398
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    if-eqz p2, :cond_0

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 2400
    .local v0, "paintOpacity":F
    instance-of v1, p3, Lcom/caverock/androidsvg/SVG$Colour;

    if-eqz v1, :cond_1

    .line 2401
    move-object v1, p3

    check-cast v1, Lcom/caverock/androidsvg/SVG$Colour;

    iget v1, v1, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    .local v1, "col":I
    goto :goto_1

    .line 2402
    .end local v1    # "col":I
    :cond_1
    instance-of v1, p3, Lcom/caverock/androidsvg/SVG$CurrentColor;

    if-eqz v1, :cond_3

    .line 2403
    iget-object v1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->color:Lcom/caverock/androidsvg/SVG$Colour;

    iget v1, v1, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    .line 2407
    .restart local v1    # "col":I
    :goto_1
    invoke-static {v1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->colourWithOpacity(IF)I

    move-result v1

    .line 2408
    if-eqz p2, :cond_2

    .line 2409
    iget-object v2, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 2411
    :cond_2
    iget-object v2, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2412
    :goto_2
    return-void

    .line 2405
    .end local v1    # "col":I
    :cond_3
    return-void
.end method

.method private setSolidColor(ZLcom/caverock/androidsvg/SVG$SolidColor;)V
    .locals 9
    .param p1, "isFill"    # Z
    .param p2, "ref"    # Lcom/caverock/androidsvg/SVG$SolidColor;

    .line 3578
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide v2, 0x180000000L

    const-wide v4, 0x100000000L

    const-wide v6, 0x80000000L

    if-eqz p1, :cond_3

    .line 3580
    iget-object v8, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, v8, v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3582
    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v7, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v7, v6, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 3583
    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    .line 3586
    :cond_1
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, v0, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3588
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->solidOpacity:Ljava/lang/Float;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    .line 3592
    :cond_2
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, v0, v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3595
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    invoke-direct {p0, v0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setPaintColour(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/caverock/androidsvg/SVG$SvgPaint;)V

    goto :goto_2

    .line 3600
    :cond_3
    iget-object v8, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, v8, v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3602
    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v7, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v7, v6, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 3603
    iget-object v6, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v7, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    if-eqz v7, :cond_4

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    iput-boolean v0, v6, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    .line 3606
    :cond_5
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, v0, v4, v5}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3608
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->solidOpacity:Ljava/lang/Float;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    .line 3612
    :cond_6
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SolidColor;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, v0, v2, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3615
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    invoke-direct {p0, v0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setPaintColour(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/caverock/androidsvg/SVG$SvgPaint;)V

    .line 3619
    :cond_7
    :goto_2
    return-void
.end method

.method private statePop()V
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 402
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 403
    return-void
.end method

.method private statePush()V
    .locals 2

    .line 390
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 392
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    new-instance v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    invoke-direct {v0, p0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;-><init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;)V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 394
    return-void
.end method

.method private textXMLSpaceTransform(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "isFirstChild"    # Z
    .param p3, "isLastChild"    # Z

    .line 1829
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-boolean v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->spacePreserve:Z

    const-string v1, " "

    if-eqz v0, :cond_0

    .line 1830
    const-string v0, "[\\n\\t]"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1833
    :cond_0
    const-string v0, "\\n"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1834
    const-string v0, "\\t"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1836
    if-eqz p2, :cond_1

    .line 1837
    const-string v0, "^\\s+"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1838
    :cond_1
    if-eqz p3, :cond_2

    .line 1839
    const-string v0, "\\s+$"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1840
    :cond_2
    const-string v0, "\\s{2,}"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateParentBoundingBox(Lcom/caverock/androidsvg/SVG$SvgElement;)V
    .locals 9
    .param p1, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElement;

    .line 685
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v0, :cond_0

    .line 686
    return-void

    .line 687
    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v0, :cond_1

    .line 688
    return-void

    .line 691
    :cond_1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 693
    .local v0, "m":Landroid/graphics/Matrix;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 694
    const/16 v1, 0x8

    new-array v1, v1, [F

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v2, v2, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    const/4 v3, 0x0

    aput v2, v1, v3

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v2, v2, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    const/4 v4, 0x1

    aput v2, v1, v4

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 695
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v2

    const/4 v5, 0x2

    aput v2, v1, v5

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v2, v2, Lcom/caverock/androidsvg/SVG$Box;->minY:F

    const/4 v5, 0x3

    aput v2, v1, v5

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 696
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Box;->maxX()F

    move-result v2

    const/4 v5, 0x4

    aput v2, v1, v5

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v2

    const/4 v5, 0x5

    aput v2, v1, v5

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v2, v2, Lcom/caverock/androidsvg/SVG$Box;->minX:F

    const/4 v5, 0x6

    aput v2, v1, v5

    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 697
    invoke-virtual {v2}, Lcom/caverock/androidsvg/SVG$Box;->maxY()F

    move-result v2

    const/4 v6, 0x7

    aput v2, v1, v6

    .line 699
    .local v1, "pts":[F
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 700
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 702
    new-instance v2, Landroid/graphics/RectF;

    aget v6, v1, v3

    aget v7, v1, v4

    aget v3, v1, v3

    aget v4, v1, v4

    invoke-direct {v2, v6, v7, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 703
    .local v2, "rect":Landroid/graphics/RectF;
    const/4 v3, 0x2

    .local v3, "i":I
    :goto_0
    if-gt v3, v5, :cond_6

    .line 704
    aget v4, v1, v3

    iget v6, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v4, v4, v6

    if-gez v4, :cond_2

    aget v4, v1, v3

    iput v4, v2, Landroid/graphics/RectF;->left:F

    .line 705
    :cond_2
    aget v4, v1, v3

    iget v6, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v4, v6

    if-lez v4, :cond_3

    aget v4, v1, v3

    iput v4, v2, Landroid/graphics/RectF;->right:F

    .line 706
    :cond_3
    add-int/lit8 v4, v3, 0x1

    aget v4, v1, v4

    iget v6, v2, Landroid/graphics/RectF;->top:F

    cmpg-float v4, v4, v6

    if-gez v4, :cond_4

    add-int/lit8 v4, v3, 0x1

    aget v4, v1, v4

    iput v4, v2, Landroid/graphics/RectF;->top:F

    .line 707
    :cond_4
    add-int/lit8 v4, v3, 0x1

    aget v4, v1, v4

    iget v6, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, v4, v6

    if-lez v4, :cond_5

    add-int/lit8 v4, v3, 0x1

    aget v4, v1, v4

    iput v4, v2, Landroid/graphics/RectF;->bottom:F

    .line 703
    :cond_5
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 710
    .end local v3    # "i":I
    :cond_6
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/caverock/androidsvg/SVG$SvgElement;

    .line 711
    .local v3, "parent":Lcom/caverock/androidsvg/SVG$SvgElement;
    iget-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v4, :cond_7

    .line 712
    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    iget v6, v2, Landroid/graphics/RectF;->right:F

    iget v7, v2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v4, v5, v6, v7}, Lcom/caverock/androidsvg/SVG$Box;->fromLimits(FFFF)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v4

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    goto :goto_1

    .line 714
    :cond_7
    iget-object v4, v3, Lcom/caverock/androidsvg/SVG$SvgElement;->boundingBox:Lcom/caverock/androidsvg/SVG$Box;

    iget v5, v2, Landroid/graphics/RectF;->left:F

    iget v6, v2, Landroid/graphics/RectF;->top:F

    iget v7, v2, Landroid/graphics/RectF;->right:F

    iget v8, v2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5, v6, v7, v8}, Lcom/caverock/androidsvg/SVG$Box;->fromLimits(FFFF)Lcom/caverock/androidsvg/SVG$Box;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/caverock/androidsvg/SVG$Box;->union(Lcom/caverock/androidsvg/SVG$Box;)V

    .line 716
    .end local v1    # "pts":[F
    .end local v2    # "rect":Landroid/graphics/RectF;
    .end local v3    # "parent":Lcom/caverock/androidsvg/SVG$SvgElement;
    :cond_8
    :goto_1
    return-void
.end method

.method private updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V
    .locals 10
    .param p1, "state"    # Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    .param p2, "style"    # Lcom/caverock/androidsvg/SVG$Style;

    .line 2095
    const-wide/16 v0, 0x1000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2097
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->color:Lcom/caverock/androidsvg/SVG$Colour;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->color:Lcom/caverock/androidsvg/SVG$Colour;

    .line 2100
    :cond_0
    const-wide/16 v0, 0x800

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2102
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    .line 2105
    :cond_1
    const-wide/16 v0, 0x1

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 2107
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 2108
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    sget-object v3, Lcom/caverock/androidsvg/SVG$Colour;->TRANSPARENT:Lcom/caverock/androidsvg/SVG$Colour;

    if-eq v0, v3, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    iput-boolean v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    .line 2111
    :cond_3
    const-wide/16 v3, 0x4

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2113
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    .line 2117
    :cond_4
    const-wide/16 v3, 0x1805

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2119
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    invoke-direct {p0, p1, v2, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setPaintColour(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/caverock/androidsvg/SVG$SvgPaint;)V

    .line 2122
    :cond_5
    const-wide/16 v3, 0x2

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2124
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->fillRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->fillRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    .line 2128
    :cond_6
    const-wide/16 v3, 0x8

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2130
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 2131
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    if-eqz v0, :cond_7

    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    sget-object v3, Lcom/caverock/androidsvg/SVG$Colour;->TRANSPARENT:Lcom/caverock/androidsvg/SVG$Colour;

    if-eq v0, v3, :cond_7

    move v0, v2

    goto :goto_1

    :cond_7
    move v0, v1

    :goto_1
    iput-boolean v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    .line 2134
    :cond_8
    const-wide/16 v3, 0x10

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2136
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    .line 2139
    :cond_9
    const-wide/16 v3, 0x1818

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2141
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    invoke-direct {p0, p1, v1, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->setPaintColour(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;ZLcom/caverock/androidsvg/SVG$SvgPaint;)V

    .line 2144
    :cond_a
    const-wide v3, 0x800000000L

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2146
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->vectorEffect:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->vectorEffect:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    .line 2149
    :cond_b
    const-wide/16 v3, 0x20

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2151
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    .line 2152
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    iget-object v3, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v3, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2155
    :cond_c
    const-wide/16 v3, 0x40

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2157
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeLineCap:Lcom/caverock/androidsvg/SVG$Style$LineCap;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeLineCap:Lcom/caverock/androidsvg/SVG$Style$LineCap;

    .line 2158
    sget-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$1;->$SwitchMap$com$caverock$androidsvg$SVG$Style$LineCap:[I

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeLineCap:Lcom/caverock/androidsvg/SVG$Style$LineCap;

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Style$LineCap;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 2167
    :pswitch_0
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 2168
    goto :goto_2

    .line 2164
    :pswitch_1
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 2165
    goto :goto_2

    .line 2161
    :pswitch_2
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 2162
    nop

    .line 2174
    :cond_d
    :goto_2
    const-wide/16 v3, 0x80

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2176
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeLineJoin:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeLineJoin:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    .line 2177
    sget-object v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$1;->$SwitchMap$com$caverock$androidsvg$SVG$Style$LineJoin:[I

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeLineJoin:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    invoke-virtual {v3}, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_1

    goto :goto_3

    .line 2186
    :pswitch_3
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 2187
    goto :goto_3

    .line 2183
    :pswitch_4
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 2184
    goto :goto_3

    .line 2180
    :pswitch_5
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 2181
    nop

    .line 2193
    :cond_e
    :goto_3
    const-wide/16 v3, 0x100

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2195
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeMiterLimit:Ljava/lang/Float;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeMiterLimit:Ljava/lang/Float;

    .line 2196
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeMiterLimit:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    .line 2199
    :cond_f
    const-wide/16 v3, 0x200

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2201
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    .line 2204
    :cond_10
    const-wide/16 v3, 0x400

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2206
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->strokeDashOffset:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashOffset:Lcom/caverock/androidsvg/SVG$Length;

    .line 2209
    :cond_11
    const-wide/16 v3, 0x600

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2212
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    const/4 v3, 0x0

    if-nez v0, :cond_12

    .line 2214
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_6

    .line 2218
    :cond_12
    const/4 v0, 0x0

    .line 2219
    .local v0, "intervalSum":F
    iget-object v4, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    array-length v4, v4

    .line 2222
    .local v4, "n":I
    rem-int/lit8 v5, v4, 0x2

    if-nez v5, :cond_13

    move v5, v4

    goto :goto_4

    :cond_13
    mul-int/lit8 v5, v4, 0x2

    .line 2223
    .local v5, "arrayLen":I
    :goto_4
    new-array v6, v5, [F

    .line 2224
    .local v6, "intervals":[F
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_5
    if-ge v7, v5, :cond_14

    .line 2225
    iget-object v8, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v8, v8, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    rem-int v9, v7, v4

    aget-object v8, v8, v9

    invoke-virtual {v8, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v8

    aput v8, v6, v7

    .line 2226
    aget v8, v6, v7

    add-float/2addr v0, v8

    .line 2224
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 2228
    .end local v7    # "i":I
    :cond_14
    const/4 v7, 0x0

    cmpl-float v8, v0, v7

    if-nez v8, :cond_15

    .line 2229
    iget-object v7, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_6

    .line 2231
    :cond_15
    iget-object v3, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->strokeDashOffset:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v3, p0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result v3

    .line 2232
    .local v3, "offset":F
    cmpg-float v7, v3, v7

    if-gez v7, :cond_16

    .line 2235
    rem-float v7, v3, v0

    add-float v3, v0, v7

    .line 2237
    :cond_16
    iget-object v7, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    new-instance v8, Landroid/graphics/DashPathEffect;

    invoke-direct {v8, v6, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 2242
    .end local v0    # "intervalSum":F
    .end local v3    # "offset":F
    .end local v4    # "n":I
    .end local v5    # "arrayLen":I
    .end local v6    # "intervals":[F
    :cond_17
    :goto_6
    const-wide/16 v3, 0x4000

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2244
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getCurrentFontSize()F

    move-result v0

    .line 2245
    .local v0, "currentFontSize":F
    iget-object v3, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, p2, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    iput-object v4, v3, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    .line 2246
    iget-object v3, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    iget-object v4, p2, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, p0, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2247
    iget-object v3, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    iget-object v4, p2, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    invoke-virtual {v4, p0, v0}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2250
    .end local v0    # "currentFontSize":F
    :cond_18
    const-wide/16 v3, 0x2000

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2252
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    .line 2255
    :cond_19
    const-wide/32 v3, 0x8000

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2258
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, -0x1

    const/16 v4, 0x64

    if-ne v0, v3, :cond_1a

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v4, :cond_1a

    .line 2259
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    goto :goto_7

    .line 2260
    :cond_1a
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_1b

    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v3, 0x384

    if-ge v0, v3, :cond_1b

    .line 2261
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    goto :goto_7

    .line 2263
    :cond_1b
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    .line 2266
    :cond_1c
    :goto_7
    const-wide/32 v3, 0x10000

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2268
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    .line 2272
    :cond_1d
    const-wide/32 v3, 0x1a000

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2274
    const/4 v0, 0x0

    .line 2276
    .local v0, "font":Landroid/graphics/Typeface;
    iget-object v3, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    if-eqz v3, :cond_20

    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    if-eqz v3, :cond_20

    .line 2277
    invoke-static {}, Lcom/caverock/androidsvg/SVG;->getFileResolver()Lcom/caverock/androidsvg/SVGExternalFileResolver;

    move-result-object v3

    .line 2279
    .local v3, "fileResolver":Lcom/caverock/androidsvg/SVGExternalFileResolver;
    iget-object v4, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2280
    .local v5, "fontName":Ljava/lang/String;
    iget-object v6, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    iget-object v7, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    invoke-direct {p0, v5, v6, v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkGenericFont(Ljava/lang/String;Ljava/lang/Integer;Lcom/caverock/androidsvg/SVG$Style$FontStyle;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 2281
    if-nez v0, :cond_1e

    if-eqz v3, :cond_1e

    .line 2282
    iget-object v6, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v6, v6, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v7, v7, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7}, Lcom/caverock/androidsvg/SVGExternalFileResolver;->resolveFont(Ljava/lang/String;ILjava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 2284
    :cond_1e
    if-eqz v0, :cond_1f

    .line 2285
    goto :goto_9

    .line 2286
    .end local v5    # "fontName":Ljava/lang/String;
    :cond_1f
    goto :goto_8

    .line 2288
    .end local v3    # "fileResolver":Lcom/caverock/androidsvg/SVGExternalFileResolver;
    :cond_20
    :goto_9
    if-nez v0, :cond_21

    .line 2290
    iget-object v3, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, v3, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    iget-object v4, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v4, v4, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    const-string v5, "serif"

    invoke-direct {p0, v5, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkGenericFont(Ljava/lang/String;Ljava/lang/Integer;Lcom/caverock/androidsvg/SVG$Style$FontStyle;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 2292
    :cond_21
    iget-object v3, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2293
    iget-object v3, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2296
    .end local v0    # "font":Landroid/graphics/Typeface;
    :cond_22
    const-wide/32 v3, 0x20000

    invoke-direct {p0, p2, v3, v4}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2298
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    .line 2299
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    sget-object v4, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->LineThrough:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    if-ne v3, v4, :cond_23

    move v3, v2

    goto :goto_a

    :cond_23
    move v3, v1

    :goto_a
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    .line 2300
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    sget-object v4, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Underline:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    if-ne v3, v4, :cond_24

    move v3, v2

    goto :goto_b

    :cond_24
    move v3, v1

    :goto_b
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 2303
    nop

    .line 2304
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    sget-object v4, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->LineThrough:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    if-ne v3, v4, :cond_25

    move v3, v2

    goto :goto_c

    :cond_25
    move v3, v1

    :goto_c
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    .line 2305
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    sget-object v4, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Underline:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    if-ne v3, v4, :cond_26

    move v1, v2

    :cond_26
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 2309
    :cond_27
    const-wide v0, 0x1000000000L

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2311
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->direction:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->direction:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    .line 2314
    :cond_28
    const-wide/32 v0, 0x40000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2316
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    .line 2319
    :cond_29
    const-wide/32 v0, 0x80000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2321
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    .line 2324
    :cond_2a
    const-wide/32 v0, 0x200000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2326
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    .line 2329
    :cond_2b
    const-wide/32 v0, 0x400000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2331
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    .line 2334
    :cond_2c
    const-wide/32 v0, 0x800000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 2336
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    .line 2339
    :cond_2d
    const-wide/32 v0, 0x1000000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2341
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    .line 2344
    :cond_2e
    const-wide/32 v0, 0x2000000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2346
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->visibility:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->visibility:Ljava/lang/Boolean;

    .line 2349
    :cond_2f
    const-wide/32 v0, 0x100000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 2351
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    .line 2354
    :cond_30
    const-wide/32 v0, 0x10000000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 2356
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    .line 2359
    :cond_31
    const-wide/32 v0, 0x20000000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 2361
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->clipRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->clipRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    .line 2364
    :cond_32
    const-wide/32 v0, 0x40000000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 2366
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    .line 2369
    :cond_33
    const-wide/32 v0, 0x4000000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 2371
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 2374
    :cond_34
    const-wide/32 v0, 0x8000000

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 2376
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    .line 2379
    :cond_35
    const-wide v0, 0x200000000L

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 2381
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 2384
    :cond_36
    const-wide v0, 0x400000000L

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 2386
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    .line 2389
    :cond_37
    const-wide v0, 0x2000000000L

    invoke-direct {p0, p2, v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->isSpecified(Lcom/caverock/androidsvg/SVG$Style;J)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 2391
    iget-object v0, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$Style;->imageRendering:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->imageRendering:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

    .line 2393
    :cond_38
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private updateStyleForElement(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$SvgElementBase;)V
    .locals 5
    .param p1, "state"    # Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
    .param p2, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 429
    iget-object v0, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 430
    .local v0, "isRootSVG":Z
    :goto_0
    iget-object v1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    invoke-virtual {v1, v0}, Lcom/caverock/androidsvg/SVG$Style;->resetNonInheritingProperties(Z)V

    .line 433
    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    if-eqz v1, :cond_1

    .line 434
    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->baseStyle:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V

    .line 437
    :cond_1
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG;->hasCSSRules()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 439
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/SVG;->getCSSRules()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/CSSParser$Rule;

    .line 441
    .local v2, "rule":Lcom/caverock/androidsvg/CSSParser$Rule;
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->ruleMatchContext:Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;

    iget-object v4, v2, Lcom/caverock/androidsvg/CSSParser$Rule;->selector:Lcom/caverock/androidsvg/CSSParser$Selector;

    invoke-static {v3, v4, p2}, Lcom/caverock/androidsvg/CSSParser;->ruleMatch(Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;Lcom/caverock/androidsvg/CSSParser$Selector;Lcom/caverock/androidsvg/SVG$SvgElementBase;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 442
    iget-object v3, v2, Lcom/caverock/androidsvg/CSSParser$Rule;->style:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, p1, v3}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V

    .line 444
    .end local v2    # "rule":Lcom/caverock/androidsvg/CSSParser$Rule;
    :cond_2
    goto :goto_1

    .line 448
    :cond_3
    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->style:Lcom/caverock/androidsvg/SVG$Style;

    if-eqz v1, :cond_4

    .line 449
    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->style:Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {p0, p1, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->updateStyle(Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;Lcom/caverock/androidsvg/SVG$Style;)V

    .line 450
    :cond_4
    return-void
.end method

.method private viewportFill()V
    .locals 2

    .line 2490
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$Colour;

    if-eqz v0, :cond_0

    .line 2491
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    check-cast v0, Lcom/caverock/androidsvg/SVG$Colour;

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    .local v0, "col":I
    goto :goto_0

    .line 2492
    .end local v0    # "col":I
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    instance-of v0, v0, Lcom/caverock/androidsvg/SVG$CurrentColor;

    if-eqz v0, :cond_2

    .line 2493
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->color:Lcom/caverock/androidsvg/SVG$Colour;

    iget v0, v0, Lcom/caverock/androidsvg/SVG$Colour;->colour:I

    .line 2497
    .restart local v0    # "col":I
    :goto_0
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    if-eqz v1, :cond_1

    .line 2498
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->colourWithOpacity(IF)I

    move-result v0

    .line 2500
    :cond_1
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 2501
    return-void

    .line 2495
    .end local v0    # "col":I
    :cond_2
    return-void
.end method

.method private visible()Z
    .locals 1

    .line 1995
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->visibility:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 1996
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVG$Style;->visibility:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 1997
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 537
    const-string v0, "SVGAndroidRenderer"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    return-void
.end method


# virtual methods
.method getCurrentFontSize()F
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    return v0
.end method

.method getCurrentFontXHeight()F
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method getCurrentViewPortInUserUnits()Lcom/caverock/androidsvg/SVG$Box;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    return-object v0

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    return-object v0
.end method

.method getDPI()F
    .locals 1

    .line 211
    iget v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->dpi:F

    return v0
.end method

.method renderDocument(Lcom/caverock/androidsvg/SVG;Lcom/caverock/androidsvg/RenderOptions;)V
    .locals 6
    .param p1, "document"    # Lcom/caverock/androidsvg/SVG;
    .param p2, "renderOptions"    # Lcom/caverock/androidsvg/RenderOptions;

    .line 246
    if-eqz p2, :cond_c

    .line 249
    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    .line 251
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG;->getRootElement()Lcom/caverock/androidsvg/SVG$Svg;

    move-result-object v0

    .line 253
    .local v0, "rootObj":Lcom/caverock/androidsvg/SVG$Svg;
    if-nez v0, :cond_0

    .line 254
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Nothing to render. Document is empty."

    invoke-static {v2, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    return-void

    .line 261
    :cond_0
    invoke-virtual {p2}, Lcom/caverock/androidsvg/RenderOptions;->hasView()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 263
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Lcom/caverock/androidsvg/SVG;

    iget-object v2, p2, Lcom/caverock/androidsvg/RenderOptions;->viewId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/caverock/androidsvg/SVG;->getElementById(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgElementBase;

    move-result-object v1

    .line 264
    .local v1, "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    const-string v2, "SVGAndroidRenderer"

    if-eqz v1, :cond_3

    instance-of v3, v1, Lcom/caverock/androidsvg/SVG$View;

    if-nez v3, :cond_1

    goto :goto_0

    .line 268
    :cond_1
    move-object v3, v1

    check-cast v3, Lcom/caverock/androidsvg/SVG$View;

    .line 270
    .local v3, "view":Lcom/caverock/androidsvg/SVG$View;
    iget-object v4, v3, Lcom/caverock/androidsvg/SVG$View;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-nez v4, :cond_2

    .line 271
    iget-object v4, p2, Lcom/caverock/androidsvg/RenderOptions;->viewId:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "View element with id \"%s\" is missing a viewBox attribute."

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return-void

    .line 274
    :cond_2
    iget-object v2, v3, Lcom/caverock/androidsvg/SVG$View;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 275
    .local v2, "viewBox":Lcom/caverock/androidsvg/SVG$Box;
    iget-object v1, v3, Lcom/caverock/androidsvg/SVG$View;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 276
    .end local v3    # "view":Lcom/caverock/androidsvg/SVG$View;
    .local v1, "preserveAspectRatio":Lcom/caverock/androidsvg/PreserveAspectRatio;
    goto :goto_2

    .line 265
    .end local v2    # "viewBox":Lcom/caverock/androidsvg/SVG$Box;
    .local v1, "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_3
    :goto_0
    iget-object v3, p2, Lcom/caverock/androidsvg/RenderOptions;->viewId:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "View element with id \"%s\" not found."

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return-void

    .line 279
    .end local v1    # "obj":Lcom/caverock/androidsvg/SVG$SvgObject;
    :cond_4
    invoke-virtual {p2}, Lcom/caverock/androidsvg/RenderOptions;->hasViewBox()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p2, Lcom/caverock/androidsvg/RenderOptions;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    goto :goto_1

    :cond_5
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Svg;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    :goto_1
    move-object v2, v1

    .line 281
    .restart local v2    # "viewBox":Lcom/caverock/androidsvg/SVG$Box;
    invoke-virtual {p2}, Lcom/caverock/androidsvg/RenderOptions;->hasPreserveAspectRatio()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p2, Lcom/caverock/androidsvg/RenderOptions;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    goto :goto_2

    :cond_6
    iget-object v1, v0, Lcom/caverock/androidsvg/SVG$Svg;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 285
    .local v1, "preserveAspectRatio":Lcom/caverock/androidsvg/PreserveAspectRatio;
    :goto_2
    invoke-virtual {p2}, Lcom/caverock/androidsvg/RenderOptions;->hasCss()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 286
    iget-object v3, p2, Lcom/caverock/androidsvg/RenderOptions;->css:Lcom/caverock/androidsvg/CSSParser$Ruleset;

    invoke-virtual {p1, v3}, Lcom/caverock/androidsvg/SVG;->addCSSRules(Lcom/caverock/androidsvg/CSSParser$Ruleset;)V

    .line 287
    :cond_7
    invoke-virtual {p2}, Lcom/caverock/androidsvg/RenderOptions;->hasTarget()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 288
    new-instance v3, Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;

    invoke-direct {v3}, Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;-><init>()V

    iput-object v3, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->ruleMatchContext:Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;

    .line 289
    iget-object v4, p2, Lcom/caverock/androidsvg/RenderOptions;->targetId:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/caverock/androidsvg/SVG;->getElementById(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$SvgElementBase;

    move-result-object v4

    iput-object v4, v3, Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;->targetElement:Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 293
    :cond_8
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->resetState()V

    .line 295
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->checkXMLSpaceAttribute(Lcom/caverock/androidsvg/SVG$SvgObject;)V

    .line 298
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePush()V

    .line 300
    new-instance v3, Lcom/caverock/androidsvg/SVG$Box;

    iget-object v4, p2, Lcom/caverock/androidsvg/RenderOptions;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {v3, v4}, Lcom/caverock/androidsvg/SVG$Box;-><init>(Lcom/caverock/androidsvg/SVG$Box;)V

    .line 302
    .local v3, "viewPort":Lcom/caverock/androidsvg/SVG$Box;
    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v4, :cond_9

    .line 303
    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Svg;->width:Lcom/caverock/androidsvg/SVG$Length;

    iget v5, v3, Lcom/caverock/androidsvg/SVG$Box;->width:F

    invoke-virtual {v4, p0, v5}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v4

    iput v4, v3, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 304
    :cond_9
    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v4, :cond_a

    .line 305
    iget-object v4, v0, Lcom/caverock/androidsvg/SVG$Svg;->height:Lcom/caverock/androidsvg/SVG$Length;

    iget v5, v3, Lcom/caverock/androidsvg/SVG$Box;->height:F

    invoke-virtual {v4, p0, v5}, Lcom/caverock/androidsvg/SVG$Length;->floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F

    move-result v4

    iput v4, v3, Lcom/caverock/androidsvg/SVG$Box;->height:F

    .line 308
    :cond_a
    invoke-direct {p0, v0, v3, v2, v1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->render(Lcom/caverock/androidsvg/SVG$Svg;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/SVG$Box;Lcom/caverock/androidsvg/PreserveAspectRatio;)V

    .line 311
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->statePop()V

    .line 313
    invoke-virtual {p2}, Lcom/caverock/androidsvg/RenderOptions;->hasCss()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 314
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG;->clearRenderCSSRules()V

    .line 315
    :cond_b
    return-void

    .line 247
    .end local v0    # "rootObj":Lcom/caverock/androidsvg/SVG$Svg;
    .end local v1    # "preserveAspectRatio":Lcom/caverock/androidsvg/PreserveAspectRatio;
    .end local v2    # "viewBox":Lcom/caverock/androidsvg/SVG$Box;
    .end local v3    # "viewPort":Lcom/caverock/androidsvg/SVG$Box;
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "renderOptions shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
