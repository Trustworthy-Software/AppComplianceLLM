.class Lcom/caverock/androidsvg/CSSParser$PseudoClassOnlyChild;
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
    name = "PseudoClassOnlyChild"
.end annotation


# instance fields
.field private isOfType:Z

.field private nodeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0
    .param p1, "isOfType"    # Z
    .param p2, "nodeName"    # Ljava/lang/String;

    .line 1580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1581
    iput-boolean p1, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassOnlyChild;->isOfType:Z

    .line 1582
    iput-object p2, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassOnlyChild;->nodeName:Ljava/lang/String;

    .line 1583
    return-void
.end method


# virtual methods
.method public matches(Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;Lcom/caverock/androidsvg/SVG$SvgElementBase;)Z
    .locals 6
    .param p1, "ruleMatchContext"    # Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;
    .param p2, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 1590
    iget-boolean v0, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassOnlyChild;->isOfType:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassOnlyChild;->nodeName:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/caverock/androidsvg/SVG$SvgElementBase;->getNodeName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassOnlyChild;->nodeName:Ljava/lang/String;

    .line 1593
    .local v0, "nodeNameToCheck":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x1

    .line 1597
    .local v1, "childCount":I
    iget-object v2, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v2, :cond_3

    .line 1598
    const/4 v1, 0x0

    .line 1599
    iget-object v2, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v2}, Lcom/caverock/androidsvg/SVG$SvgContainer;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 1600
    .local v3, "node":Lcom/caverock/androidsvg/SVG$SvgObject;
    move-object v4, v3

    check-cast v4, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 1601
    .local v4, "child":Lcom/caverock/androidsvg/SVG$SvgElementBase;
    if-eqz v0, :cond_1

    invoke-virtual {v4}, Lcom/caverock/androidsvg/SVG$SvgElementBase;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1602
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 1603
    .end local v3    # "node":Lcom/caverock/androidsvg/SVG$SvgObject;
    .end local v4    # "child":Lcom/caverock/androidsvg/SVG$SvgElementBase;
    :cond_2
    goto :goto_1

    .line 1606
    :cond_3
    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1612
    iget-boolean v0, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassOnlyChild;->isOfType:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassOnlyChild;->nodeName:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "only-of-type <%s>"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 1613
    const-string v1, "only-child"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1612
    :goto_0
    return-object v0
.end method
