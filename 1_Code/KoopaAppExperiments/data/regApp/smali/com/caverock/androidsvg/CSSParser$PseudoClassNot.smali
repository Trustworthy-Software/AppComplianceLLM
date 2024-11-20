.class Lcom/caverock/androidsvg/CSSParser$PseudoClassNot;
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
    name = "PseudoClassNot"
.end annotation


# instance fields
.field private selectorGroup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/caverock/androidsvg/CSSParser$Selector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/caverock/androidsvg/CSSParser$Selector;",
            ">;)V"
        }
    .end annotation

    .line 1666
    .local p1, "selectorGroup":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/CSSParser$Selector;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1667
    iput-object p1, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassNot;->selectorGroup:Ljava/util/List;

    .line 1668
    return-void
.end method


# virtual methods
.method getSpecificity()I
    .locals 4

    .line 1685
    const/high16 v0, -0x80000000

    .line 1686
    .local v0, "highest":I
    iget-object v1, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassNot;->selectorGroup:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/CSSParser$Selector;

    .line 1687
    .local v2, "selector":Lcom/caverock/androidsvg/CSSParser$Selector;
    iget v3, v2, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    if-le v3, v0, :cond_0

    .line 1688
    iget v0, v2, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    .line 1689
    .end local v2    # "selector":Lcom/caverock/androidsvg/CSSParser$Selector;
    :cond_0
    goto :goto_0

    .line 1690
    :cond_1
    return v0
.end method

.method public matches(Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;Lcom/caverock/androidsvg/SVG$SvgElementBase;)Z
    .locals 3
    .param p1, "ruleMatchContext"    # Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;
    .param p2, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 1675
    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassNot;->selectorGroup:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/CSSParser$Selector;

    .line 1676
    .local v1, "selector":Lcom/caverock/androidsvg/CSSParser$Selector;
    invoke-static {p1, v1, p2}, Lcom/caverock/androidsvg/CSSParser;->ruleMatch(Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;Lcom/caverock/androidsvg/CSSParser$Selector;Lcom/caverock/androidsvg/SVG$SvgElementBase;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1677
    const/4 v0, 0x0

    return v0

    .line 1678
    .end local v1    # "selector":Lcom/caverock/androidsvg/CSSParser$Selector;
    :cond_0
    goto :goto_0

    .line 1679
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassNot;->selectorGroup:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
