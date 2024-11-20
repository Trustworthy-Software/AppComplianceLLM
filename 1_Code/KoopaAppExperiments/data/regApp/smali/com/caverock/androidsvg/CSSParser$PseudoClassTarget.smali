.class Lcom/caverock/androidsvg/CSSParser$PseudoClassTarget;
.super Ljava/lang/Object;
.source "CSSParser.java"

# interfaces
.implements Lcom/caverock/androidsvg/CSSParser$PseudoClass;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/CSSParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PseudoClassTarget"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/caverock/androidsvg/CSSParser$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/caverock/androidsvg/CSSParser$1;

    .line 1702
    invoke-direct {p0}, Lcom/caverock/androidsvg/CSSParser$PseudoClassTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;Lcom/caverock/androidsvg/SVG$SvgElementBase;)Z
    .locals 2
    .param p1, "ruleMatchContext"    # Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;
    .param p2, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 1707
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1708
    iget-object v1, p1, Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;->targetElement:Lcom/caverock/androidsvg/SVG$SvgElementBase;

    if-ne p2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 1710
    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1716
    const-string v0, "target"

    return-object v0
.end method
