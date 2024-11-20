.class Lcom/caverock/androidsvg/CSSParser$PseudoClassEmpty;
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
    name = "PseudoClassEmpty"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/caverock/androidsvg/CSSParser$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/caverock/androidsvg/CSSParser$1;

    .line 1636
    invoke-direct {p0}, Lcom/caverock/androidsvg/CSSParser$PseudoClassEmpty;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;Lcom/caverock/androidsvg/SVG$SvgElementBase;)Z
    .locals 2
    .param p1, "ruleMatchContext"    # Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;
    .param p2, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 1644
    instance-of v0, p2, Lcom/caverock/androidsvg/SVG$SvgContainer;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1645
    move-object v0, p2

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v0}, Lcom/caverock/androidsvg/SVG$SvgContainer;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1647
    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1655
    const-string v0, "empty"

    return-object v0
.end method
