.class Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;
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
    name = "PseudoClassAnPlusB"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private isFromStart:Z

.field private isOfType:Z

.field private nodeName:Ljava/lang/String;


# direct methods
.method constructor <init>(IIZZLjava/lang/String;)V
    .locals 0
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "isFromStart"    # Z
    .param p4, "isOfType"    # Z
    .param p5, "nodeName"    # Ljava/lang/String;

    .line 1514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1515
    iput p1, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->a:I

    .line 1516
    iput p2, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->b:I

    .line 1517
    iput-boolean p3, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->isFromStart:Z

    .line 1518
    iput-boolean p4, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->isOfType:Z

    .line 1519
    iput-object p5, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->nodeName:Ljava/lang/String;

    .line 1520
    return-void
.end method


# virtual methods
.method public matches(Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;Lcom/caverock/androidsvg/SVG$SvgElementBase;)Z
    .locals 8
    .param p1, "ruleMatchContext"    # Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;
    .param p2, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 1527
    iget-boolean v0, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->isOfType:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->nodeName:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/caverock/androidsvg/SVG$SvgElementBase;->getNodeName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->nodeName:Ljava/lang/String;

    .line 1530
    .local v0, "nodeNameToCheck":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    .line 1531
    .local v1, "childPos":I
    const/4 v2, 0x1

    .line 1535
    .local v2, "childCount":I
    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eqz v3, :cond_4

    .line 1536
    const/4 v2, 0x0

    .line 1537
    iget-object v3, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v3}, Lcom/caverock/androidsvg/SVG$SvgContainer;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 1538
    .local v4, "node":Lcom/caverock/androidsvg/SVG$SvgObject;
    move-object v5, v4

    check-cast v5, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 1539
    .local v5, "child":Lcom/caverock/androidsvg/SVG$SvgElementBase;
    if-ne v5, p2, :cond_1

    .line 1540
    move v1, v2

    .line 1541
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v5}, Lcom/caverock/androidsvg/SVG$SvgElementBase;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1542
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 1543
    .end local v4    # "node":Lcom/caverock/androidsvg/SVG$SvgObject;
    .end local v5    # "child":Lcom/caverock/androidsvg/SVG$SvgElementBase;
    :cond_3
    goto :goto_1

    .line 1546
    :cond_4
    iget-boolean v3, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->isFromStart:Z

    if-eqz v3, :cond_5

    add-int/lit8 v3, v1, 0x1

    goto :goto_2

    :cond_5
    sub-int v3, v2, v1

    :goto_2
    move v1, v3

    .line 1551
    iget v3, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->a:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_7

    .line 1554
    iget v3, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->b:I

    if-ne v1, v3, :cond_6

    move v4, v5

    :cond_6
    return v4

    .line 1557
    :cond_7
    iget v6, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->b:I

    sub-int v7, v1, v6

    rem-int/2addr v7, v3

    if-nez v7, :cond_9

    sub-int v3, v1, v6

    .line 1559
    invoke-static {v3}, Ljava/lang/Integer;->signum(I)I

    move-result v3

    if-eqz v3, :cond_8

    iget v3, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->b:I

    sub-int v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->signum(I)I

    move-result v3

    iget v6, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->signum(I)I

    move-result v6

    if-ne v3, v6, :cond_9

    :cond_8
    move v4, v5

    goto :goto_3

    :cond_9
    nop

    .line 1557
    :goto_3
    return v4
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1565
    iget-boolean v0, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->isFromStart:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "last-"

    .line 1566
    .local v0, "last":Ljava/lang/String;
    :goto_0
    iget-boolean v1, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->isOfType:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->nodeName:Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "nth-%schild(%dn%+d of type <%s>)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->a:I

    .line 1567
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "nth-%schild(%dn%+d)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1566
    :goto_1
    return-object v1
.end method
