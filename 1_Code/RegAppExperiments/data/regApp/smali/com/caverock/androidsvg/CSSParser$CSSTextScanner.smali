.class Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;
.super Lcom/caverock/androidsvg/SVGParser$TextScanner;
.source "CSSParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/CSSParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CSSTextScanner"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .line 447
    const-string v0, "(?s)/\\*.*?\\*/"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;-><init>(Ljava/lang/String;)V

    .line 448
    return-void
.end method

.method static synthetic access$400(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/CSSParseException;
        }
    .end annotation

    .line 443
    invoke-direct {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextSelectorGroup()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private hexChar(I)I
    .locals 1
    .param p1, "ch"    # I

    .line 1001
    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    .line 1002
    add-int/lit8 v0, p1, -0x30

    return v0

    .line 1003
    :cond_0
    const/16 v0, 0x41

    if-lt p1, v0, :cond_1

    const/16 v0, 0x46

    if-gt p1, v0, :cond_1

    .line 1004
    add-int/lit8 v0, p1, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 1005
    :cond_1
    const/16 v0, 0x61

    if-lt p1, v0, :cond_2

    const/16 v0, 0x66

    if-gt p1, v0, :cond_2

    .line 1006
    add-int/lit8 v0, p1, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    .line 1007
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method private nextAnPlusB()Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/CSSParseException;
        }
    .end annotation

    .line 650
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 651
    return-object v1

    .line 653
    :cond_0
    iget v0, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 655
    .local v0, "start":I
    const/16 v2, 0x28

    invoke-virtual {p0, v2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 656
    return-object v1

    .line 657
    :cond_1
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 660
    const-string v2, "odd"

    invoke-virtual {p0, v2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_2

    .line 661
    new-instance v2, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;-><init>(II)V

    .local v2, "result":Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;
    goto/16 :goto_5

    .line 662
    .end local v2    # "result":Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;
    :cond_2
    const-string v2, "even"

    invoke-virtual {p0, v2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    .line 663
    new-instance v2, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;

    invoke-direct {v2, v3, v4}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;-><init>(II)V

    .restart local v2    # "result":Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;
    goto/16 :goto_5

    .line 668
    .end local v2    # "result":Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;
    :cond_3
    const/4 v2, 0x1

    .line 669
    .local v2, "aSign":I
    const/4 v3, 0x1

    .line 670
    .local v3, "bSign":I
    const/16 v5, 0x2b

    invoke-virtual {p0, v5}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v6

    const/16 v7, 0x2d

    if-eqz v6, :cond_4

    goto :goto_0

    .line 672
    :cond_4
    invoke-virtual {p0, v7}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 673
    const/4 v3, -0x1

    .line 676
    :cond_5
    :goto_0
    const/4 v6, 0x0

    .line 677
    .local v6, "a":Lcom/caverock/androidsvg/IntegerParser;
    iget-object v8, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    iget v9, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    iget v10, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->inputLength:I

    invoke-static {v8, v9, v10, v4}, Lcom/caverock/androidsvg/IntegerParser;->parseInt(Ljava/lang/String;IIZ)Lcom/caverock/androidsvg/IntegerParser;

    move-result-object v8

    .line 678
    .local v8, "b":Lcom/caverock/androidsvg/IntegerParser;
    if-eqz v8, :cond_6

    .line 679
    invoke-virtual {v8}, Lcom/caverock/androidsvg/IntegerParser;->getEndPos()I

    move-result v9

    iput v9, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 681
    :cond_6
    const/16 v9, 0x6e

    invoke-virtual {p0, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v9

    if-nez v9, :cond_7

    const/16 v9, 0x4e

    invoke-virtual {p0, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 682
    :cond_7
    if-eqz v8, :cond_8

    move-object v9, v8

    goto :goto_1

    :cond_8
    new-instance v9, Lcom/caverock/androidsvg/IntegerParser;

    const-wide/16 v10, 0x1

    iget v12, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    invoke-direct {v9, v10, v11, v12}, Lcom/caverock/androidsvg/IntegerParser;-><init>(JI)V

    :goto_1
    move-object v6, v9

    .line 683
    move v2, v3

    .line 684
    const/4 v8, 0x0

    .line 685
    const/4 v3, 0x1

    .line 686
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 688
    invoke-virtual {p0, v5}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v5

    .line 689
    .local v5, "hasB":Z
    if-nez v5, :cond_9

    .line 690
    invoke-virtual {p0, v7}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v5

    .line 691
    if-eqz v5, :cond_9

    .line 692
    const/4 v3, -0x1

    .line 695
    :cond_9
    if-eqz v5, :cond_b

    .line 696
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 697
    iget-object v7, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    iget v9, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    iget v10, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->inputLength:I

    invoke-static {v7, v9, v10, v4}, Lcom/caverock/androidsvg/IntegerParser;->parseInt(Ljava/lang/String;IIZ)Lcom/caverock/androidsvg/IntegerParser;

    move-result-object v8

    .line 698
    if-eqz v8, :cond_a

    .line 699
    invoke-virtual {v8}, Lcom/caverock/androidsvg/IntegerParser;->getEndPos()I

    move-result v7

    iput v7, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    goto :goto_2

    .line 701
    :cond_a
    iput v0, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 702
    return-object v1

    .line 707
    .end local v5    # "hasB":Z
    :cond_b
    :goto_2
    new-instance v5, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;

    if-nez v6, :cond_c

    move v7, v4

    goto :goto_3

    :cond_c
    invoke-virtual {v6}, Lcom/caverock/androidsvg/IntegerParser;->value()I

    move-result v7

    mul-int/2addr v7, v2

    :goto_3
    if-nez v8, :cond_d

    goto :goto_4

    .line 708
    :cond_d
    invoke-virtual {v8}, Lcom/caverock/androidsvg/IntegerParser;->value()I

    move-result v4

    mul-int/2addr v4, v3

    :goto_4
    invoke-direct {v5, v7, v4}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;-><init>(II)V

    move-object v4, v5

    move-object v2, v4

    .line 711
    .end local v3    # "bSign":I
    .end local v6    # "a":Lcom/caverock/androidsvg/IntegerParser;
    .end local v8    # "b":Lcom/caverock/androidsvg/IntegerParser;
    .local v2, "result":Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;
    :goto_5
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 712
    const/16 v3, 0x29

    invoke-virtual {p0, v3}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 713
    return-object v2

    .line 715
    :cond_e
    iput v0, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 716
    return-object v1
.end method

.method private nextAttribValue()Ljava/lang/String;
    .locals 2

    .line 919
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 920
    const/4 v0, 0x0

    return-object v0

    .line 922
    :cond_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextQuotedString()Ljava/lang/String;

    move-result-object v0

    .line 923
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 924
    return-object v0

    .line 925
    :cond_1
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private nextIdentListParam()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/CSSParseException;
        }
    .end annotation

    .line 726
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 727
    return-object v1

    .line 729
    :cond_0
    iget v0, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 730
    .local v0, "start":I
    const/4 v2, 0x0

    .line 732
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v3, 0x28

    invoke-virtual {p0, v3}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 733
    return-object v1

    .line 734
    :cond_1
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 737
    :goto_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v3

    .line 738
    .local v3, "ident":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 739
    iput v0, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 740
    return-object v1

    .line 742
    :cond_2
    if-nez v2, :cond_3

    .line 743
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v4

    .line 744
    :cond_3
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 746
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipCommaWhitespace()Z

    move-result v4

    if-nez v4, :cond_5

    .line 747
    nop

    .line 750
    .end local v3    # "ident":Ljava/lang/String;
    const/16 v3, 0x29

    invoke-virtual {p0, v3}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 751
    return-object v2

    .line 753
    :cond_4
    iput v0, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 754
    return-object v1

    .line 748
    :cond_5
    goto :goto_0
.end method

.method private nextPseudoNotParam()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/caverock/androidsvg/CSSParser$Selector;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/CSSParseException;
        }
    .end annotation

    .line 763
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 764
    return-object v1

    .line 766
    :cond_0
    iget v0, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 768
    .local v0, "start":I
    const/16 v2, 0x28

    invoke-virtual {p0, v2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 769
    return-object v1

    .line 770
    :cond_1
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 773
    invoke-direct {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextSelectorGroup()Ljava/util/List;

    move-result-object v2

    .line 775
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/CSSParser$Selector;>;"
    if-nez v2, :cond_2

    .line 776
    iput v0, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 777
    return-object v1

    .line 780
    :cond_2
    const/16 v3, 0x29

    invoke-virtual {p0, v3}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v3

    if-nez v3, :cond_3

    .line 781
    iput v0, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 782
    return-object v1

    .line 786
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/caverock/androidsvg/CSSParser$Selector;

    .line 787
    .local v4, "selector":Lcom/caverock/androidsvg/CSSParser$Selector;
    iget-object v5, v4, Lcom/caverock/androidsvg/CSSParser$Selector;->simpleSelectors:Ljava/util/List;

    if-nez v5, :cond_4

    .line 788
    goto :goto_4

    .line 789
    :cond_4
    iget-object v5, v4, Lcom/caverock/androidsvg/CSSParser$Selector;->simpleSelectors:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    .line 790
    .local v6, "simpleSelector":Lcom/caverock/androidsvg/CSSParser$SimpleSelector;
    iget-object v7, v6, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->pseudos:Ljava/util/List;

    if-nez v7, :cond_5

    .line 791
    goto :goto_3

    .line 792
    :cond_5
    iget-object v7, v6, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->pseudos:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/caverock/androidsvg/CSSParser$PseudoClass;

    .line 793
    .local v8, "pseudo":Lcom/caverock/androidsvg/CSSParser$PseudoClass;
    instance-of v9, v8, Lcom/caverock/androidsvg/CSSParser$PseudoClassNot;

    if-eqz v9, :cond_6

    .line 794
    return-object v1

    .line 795
    .end local v8    # "pseudo":Lcom/caverock/androidsvg/CSSParser$PseudoClass;
    :cond_6
    goto :goto_2

    .line 796
    .end local v6    # "simpleSelector":Lcom/caverock/androidsvg/CSSParser$SimpleSelector;
    :cond_7
    goto :goto_1

    .line 797
    .end local v4    # "selector":Lcom/caverock/androidsvg/CSSParser$Selector;
    :cond_8
    :goto_3
    goto :goto_0

    .line 799
    :cond_9
    :goto_4
    return-object v2
.end method

.method private nextSelectorGroup()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/caverock/androidsvg/CSSParser$Selector;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/CSSParseException;
        }
    .end annotation

    .line 493
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 494
    return-object v1

    .line 496
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 497
    .local v0, "selectorGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/caverock/androidsvg/CSSParser$Selector;>;"
    new-instance v2, Lcom/caverock/androidsvg/CSSParser$Selector;

    invoke-direct {v2, v1}, Lcom/caverock/androidsvg/CSSParser$Selector;-><init>(Lcom/caverock/androidsvg/CSSParser$1;)V

    .line 499
    .local v2, "selector":Lcom/caverock/androidsvg/CSSParser$Selector;
    :goto_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 501
    invoke-virtual {p0, v2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextSimpleSelector(Lcom/caverock/androidsvg/CSSParser$Selector;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 504
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipCommaWhitespace()Z

    move-result v3

    if-nez v3, :cond_1

    .line 505
    goto :goto_0

    .line 506
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    new-instance v3, Lcom/caverock/androidsvg/CSSParser$Selector;

    invoke-direct {v3, v1}, Lcom/caverock/androidsvg/CSSParser$Selector;-><init>(Lcom/caverock/androidsvg/CSSParser$1;)V

    move-object v2, v3

    goto :goto_0

    .line 512
    :cond_2
    invoke-virtual {v2}, Lcom/caverock/androidsvg/CSSParser$Selector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 513
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    :cond_3
    return-object v0
.end method

.method private parsePseudoClass(Lcom/caverock/androidsvg/CSSParser$Selector;Lcom/caverock/androidsvg/CSSParser$SimpleSelector;)V
    .locals 13
    .param p1, "selector"    # Lcom/caverock/androidsvg/CSSParser$Selector;
    .param p2, "selectorPart"    # Lcom/caverock/androidsvg/CSSParser$SimpleSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/CSSParseException;
        }
    .end annotation

    .line 810
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 811
    .local v0, "ident":Ljava/lang/String;
    if-eqz v0, :cond_6

    .line 814
    const/4 v1, 0x0

    .line 815
    .local v1, "pseudo":Lcom/caverock/androidsvg/CSSParser$PseudoClass;
    invoke-static {v0}, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->fromString(Ljava/lang/String;)Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    move-result-object v2

    .line 816
    .local v2, "identEnum":Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;
    sget-object v3, Lcom/caverock/androidsvg/CSSParser$1;->$SwitchMap$com$caverock$androidsvg$CSSParser$PseudoClassIdents:[I

    invoke-virtual {v2}, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const-string v4, "Invalid or missing parameter section for pseudo class: "

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    packed-switch v3, :pswitch_data_0

    .line 905
    new-instance v3, Lcom/caverock/androidsvg/CSSParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported pseudo class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/caverock/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 900
    :pswitch_0
    new-instance v3, Lcom/caverock/androidsvg/CSSParser$PseudoClassNotSupported;

    invoke-direct {v3, v0}, Lcom/caverock/androidsvg/CSSParser$PseudoClassNotSupported;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 901
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    .line 902
    goto/16 :goto_4

    .line 886
    :pswitch_1
    invoke-direct {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentListParam()Ljava/util/List;

    move-result-object v3

    .line 887
    .local v3, "langs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Lcom/caverock/androidsvg/CSSParser$PseudoClassNotSupported;

    invoke-direct {v4, v0}, Lcom/caverock/androidsvg/CSSParser$PseudoClassNotSupported;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .line 888
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    .line 889
    goto/16 :goto_4

    .line 881
    .end local v3    # "langs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2
    new-instance v3, Lcom/caverock/androidsvg/CSSParser$PseudoClassTarget;

    invoke-direct {v3, v7}, Lcom/caverock/androidsvg/CSSParser$PseudoClassTarget;-><init>(Lcom/caverock/androidsvg/CSSParser$1;)V

    move-object v1, v3

    .line 882
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    .line 883
    goto/16 :goto_4

    .line 872
    :pswitch_3
    invoke-direct {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextPseudoNotParam()Ljava/util/List;

    move-result-object v3

    .line 873
    .local v3, "notSelectorGroup":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/CSSParser$Selector;>;"
    if-eqz v3, :cond_0

    .line 875
    new-instance v4, Lcom/caverock/androidsvg/CSSParser$PseudoClassNot;

    invoke-direct {v4, v3}, Lcom/caverock/androidsvg/CSSParser$PseudoClassNot;-><init>(Ljava/util/List;)V

    move-object v1, v4

    .line 876
    move-object v4, v1

    check-cast v4, Lcom/caverock/androidsvg/CSSParser$PseudoClassNot;

    invoke-virtual {v4}, Lcom/caverock/androidsvg/CSSParser$PseudoClassNot;->getSpecificity()I

    move-result v4

    iput v4, p1, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    .line 877
    goto/16 :goto_4

    .line 874
    :cond_0
    new-instance v5, Lcom/caverock/androidsvg/CSSParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/caverock/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 862
    .end local v3    # "notSelectorGroup":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/CSSParser$Selector;>;"
    :pswitch_4
    sget-object v3, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->nth_child:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    if-eq v2, v3, :cond_2

    sget-object v3, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->nth_of_type:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    move v10, v6

    goto :goto_1

    :cond_2
    :goto_0
    move v10, v5

    .line 863
    .local v10, "fromStart":Z
    :goto_1
    sget-object v3, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->nth_of_type:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    if-eq v2, v3, :cond_4

    sget-object v3, Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;->nth_last_of_type:Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;

    if-ne v2, v3, :cond_3

    goto :goto_2

    :cond_3
    move v11, v6

    goto :goto_3

    :cond_4
    :goto_2
    move v11, v5

    .line 864
    .local v11, "ofType":Z
    :goto_3
    invoke-direct {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextAnPlusB()Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;

    move-result-object v3

    .line 865
    .local v3, "ab":Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;
    if-eqz v3, :cond_5

    .line 867
    new-instance v4, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;

    iget v8, v3, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;->a:I

    iget v9, v3, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;->b:I

    iget-object v12, p2, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->tag:Ljava/lang/String;

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;-><init>(IIZZLjava/lang/String;)V

    move-object v1, v4

    .line 868
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    .line 869
    goto/16 :goto_4

    .line 866
    :cond_5
    new-instance v5, Lcom/caverock/androidsvg/CSSParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/caverock/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 854
    .end local v3    # "ab":Lcom/caverock/androidsvg/CSSParser$CSSTextScanner$AnPlusB;
    .end local v10    # "fromStart":Z
    .end local v11    # "ofType":Z
    :pswitch_5
    new-instance v3, Lcom/caverock/androidsvg/CSSParser$PseudoClassEmpty;

    invoke-direct {v3, v7}, Lcom/caverock/androidsvg/CSSParser$PseudoClassEmpty;-><init>(Lcom/caverock/androidsvg/CSSParser$1;)V

    move-object v1, v3

    .line 855
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    .line 856
    goto/16 :goto_4

    .line 849
    :pswitch_6
    new-instance v3, Lcom/caverock/androidsvg/CSSParser$PseudoClassRoot;

    invoke-direct {v3, v7}, Lcom/caverock/androidsvg/CSSParser$PseudoClassRoot;-><init>(Lcom/caverock/androidsvg/CSSParser$1;)V

    move-object v1, v3

    .line 850
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    .line 851
    goto :goto_4

    .line 844
    :pswitch_7
    new-instance v3, Lcom/caverock/androidsvg/CSSParser$PseudoClassOnlyChild;

    iget-object v4, p2, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->tag:Ljava/lang/String;

    invoke-direct {v3, v5, v4}, Lcom/caverock/androidsvg/CSSParser$PseudoClassOnlyChild;-><init>(ZLjava/lang/String;)V

    move-object v1, v3

    .line 845
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    .line 846
    goto :goto_4

    .line 839
    :pswitch_8
    new-instance v9, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-object v8, p2, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->tag:Ljava/lang/String;

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;-><init>(IIZZLjava/lang/String;)V

    move-object v1, v9

    .line 840
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    .line 841
    goto :goto_4

    .line 834
    :pswitch_9
    new-instance v9, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    iget-object v8, p2, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->tag:Ljava/lang/String;

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;-><init>(IIZZLjava/lang/String;)V

    move-object v1, v9

    .line 835
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    .line 836
    goto :goto_4

    .line 829
    :pswitch_a
    new-instance v3, Lcom/caverock/androidsvg/CSSParser$PseudoClassOnlyChild;

    invoke-direct {v3, v6, v7}, Lcom/caverock/androidsvg/CSSParser$PseudoClassOnlyChild;-><init>(ZLjava/lang/String;)V

    move-object v1, v3

    .line 830
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    .line 831
    goto :goto_4

    .line 824
    :pswitch_b
    new-instance v9, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;-><init>(IIZZLjava/lang/String;)V

    move-object v1, v9

    .line 825
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    .line 826
    goto :goto_4

    .line 819
    :pswitch_c
    new-instance v9, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;-><init>(IIZZLjava/lang/String;)V

    move-object v1, v9

    .line 820
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    .line 821
    nop

    .line 909
    :goto_4
    invoke-virtual {p2, v1}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->addPseudo(Lcom/caverock/androidsvg/CSSParser$PseudoClass;)V

    .line 911
    return-void

    .line 812
    .end local v1    # "pseudo":Lcom/caverock/androidsvg/CSSParser$PseudoClass;
    .end local v2    # "identEnum":Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;
    :cond_6
    new-instance v1, Lcom/caverock/androidsvg/CSSParseException;

    const-string v2, "Invalid pseudo class"

    invoke-direct {v1, v2}, Lcom/caverock/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private scanForIdentifier()I
    .locals 10

    .line 465
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    iget v0, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    return v0

    .line 467
    :cond_0
    iget v0, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 468
    .local v0, "start":I
    iget v1, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 470
    .local v1, "lastValidPos":I
    iget-object v2, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    iget v3, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 471
    .local v2, "ch":I
    const/16 v3, 0x2d

    if-ne v2, v3, :cond_1

    .line 472
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->advanceChar()I

    move-result v2

    .line 474
    :cond_1
    const/16 v4, 0x7a

    const/16 v5, 0x5f

    const/16 v6, 0x5a

    const/16 v7, 0x61

    const/16 v8, 0x41

    if-lt v2, v8, :cond_2

    if-le v2, v6, :cond_4

    :cond_2
    if-lt v2, v7, :cond_3

    if-le v2, v4, :cond_4

    :cond_3
    if-ne v2, v5, :cond_a

    .line 476
    :cond_4
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->advanceChar()I

    move-result v2

    .line 478
    :goto_0
    if-lt v2, v8, :cond_5

    if-le v2, v6, :cond_9

    :cond_5
    if-lt v2, v7, :cond_6

    if-le v2, v4, :cond_9

    :cond_6
    const/16 v9, 0x30

    if-lt v2, v9, :cond_7

    const/16 v9, 0x39

    if-le v2, v9, :cond_9

    :cond_7
    if-eq v2, v3, :cond_9

    if-ne v2, v5, :cond_8

    goto :goto_1

    .line 481
    :cond_8
    iget v1, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    goto :goto_2

    .line 479
    :cond_9
    :goto_1
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->advanceChar()I

    move-result v2

    goto :goto_0

    .line 483
    :cond_a
    :goto_2
    iput v0, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 484
    return v1
.end method


# virtual methods
.method nextCSSString()Ljava/lang/String;
    .locals 8

    .line 955
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 956
    return-object v1

    .line 957
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 958
    .local v0, "ch":I
    move v2, v0

    .line 959
    .local v2, "endQuote":I
    const/16 v3, 0x27

    if-eq v0, v3, :cond_1

    const/16 v3, 0x22

    if-eq v0, v3, :cond_1

    .line 960
    return-object v1

    .line 962
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 963
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget v3, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 964
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextChar()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 965
    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_8

    if-eq v0, v2, :cond_8

    .line 967
    const/16 v4, 0x5c

    if-ne v0, v4, :cond_7

    .line 969
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextChar()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 970
    if-ne v0, v3, :cond_2

    .line 971
    goto :goto_0

    .line 972
    :cond_2
    const/16 v4, 0xa

    if-eq v0, v4, :cond_6

    const/16 v4, 0xd

    if-eq v0, v4, :cond_6

    const/16 v4, 0xc

    if-ne v0, v4, :cond_3

    goto :goto_3

    .line 976
    :cond_3
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->hexChar(I)I

    move-result v4

    .line 977
    .local v4, "hc":I
    if-eq v4, v3, :cond_7

    .line 978
    move v5, v4

    .line 979
    .local v5, "codepoint":I
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_1
    const/4 v7, 0x5

    if-gt v6, v7, :cond_5

    .line 980
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextChar()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 981
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->hexChar(I)I

    move-result v4

    .line 982
    if-ne v4, v3, :cond_4

    .line 983
    goto :goto_2

    .line 984
    :cond_4
    mul-int/lit8 v7, v5, 0x10

    add-int v5, v7, v4

    .line 979
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 986
    .end local v6    # "i":I
    :cond_5
    :goto_2
    int-to-char v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 987
    goto :goto_0

    .line 973
    .end local v4    # "hc":I
    .end local v5    # "codepoint":I
    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextChar()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 974
    goto :goto_0

    .line 992
    :cond_7
    int-to-char v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 993
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextChar()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 995
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method nextIdentifier()Ljava/lang/String;
    .locals 3

    .line 455
    invoke-direct {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->scanForIdentifier()I

    move-result v0

    .line 456
    .local v0, "end":I
    iget v1, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    if-ne v0, v1, :cond_0

    .line 457
    const/4 v1, 0x0

    return-object v1

    .line 458
    :cond_0
    iget-object v1, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 459
    .local v1, "result":Ljava/lang/String;
    iput v0, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 460
    return-object v1
.end method

.method nextLegacyURL()Ljava/lang/String;
    .locals 8

    .line 1050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1052
    .local v0, "sb":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1054
    iget-object v1, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1056
    .local v1, "ch":I
    const/16 v2, 0x27

    if-eq v1, v2, :cond_8

    const/16 v2, 0x22

    if-eq v1, v2, :cond_8

    const/16 v2, 0x28

    if-eq v1, v2, :cond_8

    const/16 v2, 0x29

    if-eq v1, v2, :cond_8

    invoke-virtual {p0, v1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->isWhitespace(I)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {v1}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1057
    goto :goto_3

    .line 1059
    :cond_1
    iget v2, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 1060
    const/16 v2, 0x5c

    if-ne v1, v2, :cond_7

    .line 1062
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1063
    goto :goto_0

    .line 1065
    :cond_2
    iget-object v2, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    iget v3, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1066
    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    const/16 v2, 0xc

    if-ne v1, v2, :cond_3

    .line 1067
    goto :goto_0

    .line 1069
    :cond_3
    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->hexChar(I)I

    move-result v2

    .line 1070
    .local v2, "hc":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_7

    .line 1071
    move v4, v2

    .line 1072
    .local v4, "codepoint":I
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_1
    const/4 v6, 0x5

    if-gt v5, v6, :cond_6

    .line 1073
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1074
    goto :goto_2

    .line 1075
    :cond_4
    iget-object v6, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    iget v7, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-direct {p0, v6}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->hexChar(I)I

    move-result v2

    .line 1076
    if-ne v2, v3, :cond_5

    .line 1077
    goto :goto_2

    .line 1078
    :cond_5
    iget v6, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 1079
    mul-int/lit8 v6, v4, 0x10

    add-int v4, v6, v2

    .line 1072
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1081
    .end local v5    # "i":I
    :cond_6
    :goto_2
    int-to-char v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1082
    goto/16 :goto_0

    .line 1087
    .end local v2    # "hc":I
    .end local v4    # "codepoint":I
    :cond_7
    int-to-char v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1088
    .end local v1    # "ch":I
    goto/16 :goto_0

    .line 1089
    :cond_8
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_9

    .line 1090
    const/4 v1, 0x0

    return-object v1

    .line 1091
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method nextPropertyValue()Ljava/lang/String;
    .locals 5

    .line 933
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 934
    return-object v1

    .line 935
    :cond_0
    iget v0, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 936
    .local v0, "start":I
    iget v2, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 938
    .local v2, "lastValidPos":I
    iget-object v3, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    iget v4, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 939
    .local v3, "ch":I
    :goto_0
    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_2

    const/16 v4, 0x7d

    if-eq v3, v4, :cond_2

    const/16 v4, 0x21

    if-eq v3, v4, :cond_2

    invoke-virtual {p0, v3}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->isEOL(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 940
    invoke-virtual {p0, v3}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->isWhitespace(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 941
    iget v4, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    add-int/lit8 v4, v4, 0x1

    move v2, v4

    .line 942
    :cond_1
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->advanceChar()I

    move-result v3

    goto :goto_0

    .line 944
    :cond_2
    iget v4, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    if-le v4, v0, :cond_3

    .line 945
    iget-object v1, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->input:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 946
    :cond_3
    iput v0, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 947
    return-object v1
.end method

.method nextSimpleSelector(Lcom/caverock/androidsvg/CSSParser$Selector;)Z
    .locals 10
    .param p1, "selector"    # Lcom/caverock/androidsvg/CSSParser$Selector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/CSSParseException;
        }
    .end annotation

    .line 525
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 526
    return v1

    .line 528
    :cond_0
    iget v0, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 529
    .local v0, "start":I
    const/4 v2, 0x0

    .line 530
    .local v2, "combinator":Lcom/caverock/androidsvg/CSSParser$Combinator;
    const/4 v3, 0x0

    .line 532
    .local v3, "selectorPart":Lcom/caverock/androidsvg/CSSParser$SimpleSelector;
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 534
    const/16 v4, 0x3e

    invoke-virtual {p0, v4}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 535
    sget-object v2, Lcom/caverock/androidsvg/CSSParser$Combinator;->CHILD:Lcom/caverock/androidsvg/CSSParser$Combinator;

    .line 536
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    goto :goto_0

    .line 537
    :cond_1
    const/16 v4, 0x2b

    invoke-virtual {p0, v4}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 538
    sget-object v2, Lcom/caverock/androidsvg/CSSParser$Combinator;->FOLLOWS:Lcom/caverock/androidsvg/CSSParser$Combinator;

    .line 539
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 543
    :cond_2
    :goto_0
    const/16 v4, 0x2a

    invoke-virtual {p0, v4}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 544
    new-instance v4, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    invoke-direct {v4, v2, v5}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    move-object v3, v4

    goto :goto_1

    .line 546
    :cond_3
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v4

    .line 547
    .local v4, "tag":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 548
    new-instance v6, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    invoke-direct {v6, v2, v4}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    move-object v3, v6

    .line 549
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedElement()V

    .line 553
    .end local v4    # "tag":Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v4

    if-nez v4, :cond_16

    .line 555
    const/16 v4, 0x2e

    invoke-virtual {p0, v4}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 558
    if-nez v3, :cond_5

    .line 559
    new-instance v4, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    invoke-direct {v4, v2, v5}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    move-object v3, v4

    .line 560
    :cond_5
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v4

    .line 561
    .local v4, "value":Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 563
    const-string v6, "class"

    sget-object v7, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EQUALS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    invoke-virtual {v3, v6, v7, v4}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->addAttrib(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V

    .line 564
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    .line 565
    goto :goto_1

    .line 562
    :cond_6
    new-instance v1, Lcom/caverock/androidsvg/CSSParseException;

    const-string v5, "Invalid \".class\" simpleSelectors"

    invoke-direct {v1, v5}, Lcom/caverock/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 568
    .end local v4    # "value":Ljava/lang/String;
    :cond_7
    const/16 v4, 0x23

    invoke-virtual {p0, v4}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 571
    if-nez v3, :cond_8

    .line 572
    new-instance v4, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    invoke-direct {v4, v2, v5}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    move-object v3, v4

    .line 573
    :cond_8
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v4

    .line 574
    .restart local v4    # "value":Ljava/lang/String;
    if-eqz v4, :cond_9

    .line 576
    const-string v6, "id"

    sget-object v7, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EQUALS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    invoke-virtual {v3, v6, v7, v4}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->addAttrib(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V

    .line 577
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedIdAttribute()V

    .line 578
    goto :goto_1

    .line 575
    :cond_9
    new-instance v1, Lcom/caverock/androidsvg/CSSParseException;

    const-string v5, "Invalid \"#id\" simpleSelectors"

    invoke-direct {v1, v5}, Lcom/caverock/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 582
    .end local v4    # "value":Ljava/lang/String;
    :cond_a
    const/16 v4, 0x5b

    invoke-virtual {p0, v4}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 584
    if-nez v3, :cond_b

    .line 585
    new-instance v4, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    invoke-direct {v4, v2, v5}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    move-object v3, v4

    .line 586
    :cond_b
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 587
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v4

    .line 588
    .local v4, "attrName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 589
    .local v6, "attrValue":Ljava/lang/String;
    const-string v7, "Invalid attribute simpleSelectors"

    if-eqz v4, :cond_13

    .line 591
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 592
    const/4 v8, 0x0

    .line 593
    .local v8, "op":Lcom/caverock/androidsvg/CSSParser$AttribOp;
    const/16 v9, 0x3d

    invoke-virtual {p0, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 594
    sget-object v8, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EQUALS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    goto :goto_2

    .line 595
    :cond_c
    const-string v9, "~="

    invoke-virtual {p0, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 596
    sget-object v8, Lcom/caverock/androidsvg/CSSParser$AttribOp;->INCLUDES:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    goto :goto_2

    .line 597
    :cond_d
    const-string v9, "|="

    invoke-virtual {p0, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 598
    sget-object v8, Lcom/caverock/androidsvg/CSSParser$AttribOp;->DASHMATCH:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    .line 599
    :cond_e
    :goto_2
    if-eqz v8, :cond_10

    .line 600
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 601
    invoke-direct {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextAttribValue()Ljava/lang/String;

    move-result-object v6

    .line 602
    if-eqz v6, :cond_f

    .line 604
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    goto :goto_3

    .line 603
    :cond_f
    new-instance v1, Lcom/caverock/androidsvg/CSSParseException;

    invoke-direct {v1, v7}, Lcom/caverock/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 606
    :cond_10
    :goto_3
    const/16 v9, 0x5d

    invoke-virtual {p0, v9}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 608
    if-nez v8, :cond_11

    sget-object v7, Lcom/caverock/androidsvg/CSSParser$AttribOp;->EXISTS:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    goto :goto_4

    :cond_11
    move-object v7, v8

    :goto_4
    invoke-virtual {v3, v4, v7, v6}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->addAttrib(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V

    .line 609
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->addedAttributeOrPseudo()V

    .line 610
    goto/16 :goto_1

    .line 607
    :cond_12
    new-instance v1, Lcom/caverock/androidsvg/CSSParseException;

    invoke-direct {v1, v7}, Lcom/caverock/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 590
    .end local v8    # "op":Lcom/caverock/androidsvg/CSSParser$AttribOp;
    :cond_13
    new-instance v1, Lcom/caverock/androidsvg/CSSParseException;

    invoke-direct {v1, v7}, Lcom/caverock/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 613
    .end local v4    # "attrName":Ljava/lang/String;
    .end local v6    # "attrValue":Ljava/lang/String;
    :cond_14
    const/16 v4, 0x3a

    invoke-virtual {p0, v4}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 615
    if-nez v3, :cond_15

    .line 616
    new-instance v4, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    invoke-direct {v4, v2, v5}, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;-><init>(Lcom/caverock/androidsvg/CSSParser$Combinator;Ljava/lang/String;)V

    move-object v3, v4

    .line 617
    :cond_15
    invoke-direct {p0, p1, v3}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->parsePseudoClass(Lcom/caverock/androidsvg/CSSParser$Selector;Lcom/caverock/androidsvg/CSSParser$SimpleSelector;)V

    .line 618
    goto/16 :goto_1

    .line 624
    :cond_16
    if-eqz v3, :cond_17

    .line 626
    invoke-virtual {p1, v3}, Lcom/caverock/androidsvg/CSSParser$Selector;->add(Lcom/caverock/androidsvg/CSSParser$SimpleSelector;)V

    .line 627
    const/4 v1, 0x1

    return v1

    .line 631
    :cond_17
    iput v0, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 632
    return v1
.end method

.method nextURL()Ljava/lang/String;
    .locals 4

    .line 1017
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1018
    return-object v1

    .line 1019
    :cond_0
    iget v0, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 1020
    .local v0, "start":I
    const-string v2, "url("

    invoke-virtual {p0, v2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1021
    return-object v1

    .line 1023
    :cond_1
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 1025
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextCSSString()Ljava/lang/String;

    move-result-object v2

    .line 1026
    .local v2, "url":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 1027
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextLegacyURL()Ljava/lang/String;

    move-result-object v2

    .line 1029
    :cond_2
    if-nez v2, :cond_3

    .line 1030
    iput v0, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 1031
    return-object v1

    .line 1034
    :cond_3
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 1036
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, ")"

    invoke-virtual {p0, v3}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    .line 1039
    :cond_4
    iput v0, p0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->position:I

    .line 1040
    return-object v1

    .line 1037
    :cond_5
    :goto_0
    return-object v2
.end method
