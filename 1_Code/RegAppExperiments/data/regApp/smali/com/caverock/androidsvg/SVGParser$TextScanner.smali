.class Lcom/caverock/androidsvg/SVGParser$TextScanner;
.super Ljava/lang/Object;
.source "SVGParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVGParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextScanner"
.end annotation


# instance fields
.field input:Ljava/lang/String;

.field inputLength:I

.field private numberParser:Lcom/caverock/androidsvg/NumberParser;

.field position:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .line 2497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2490
    const/4 v0, 0x0

    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2491
    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    .line 2493
    new-instance v0, Lcom/caverock/androidsvg/NumberParser;

    invoke-direct {v0}, Lcom/caverock/androidsvg/NumberParser;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->numberParser:Lcom/caverock/androidsvg/NumberParser;

    .line 2498
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    .line 2499
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    .line 2500
    return-void
.end method


# virtual methods
.method advanceChar()I
    .locals 3

    .line 2673
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    const/4 v2, -0x1

    if-ne v0, v1, :cond_0

    .line 2674
    return v2

    .line 2675
    :cond_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2676
    if-ge v0, v1, :cond_1

    .line 2677
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    .line 2679
    :cond_1
    return v2
.end method

.method ahead()Ljava/lang/String;
    .locals 3

    .line 2794
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2795
    .local v0, "start":I
    :goto_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->isWhitespace(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2796
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    goto :goto_0

    .line 2797
    :cond_0
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2798
    .local v1, "str":Ljava/lang/String;
    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2799
    return-object v1
.end method

.method checkedNextFlag(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "lastRead"    # Ljava/lang/Object;

    .line 2642
    if-nez p1, :cond_0

    .line 2643
    const/4 v0, 0x0

    return-object v0

    .line 2645
    :cond_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 2646
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFlag()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method checkedNextFloat(F)F
    .locals 1
    .param p1, "lastRead"    # F

    .line 2573
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2574
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0

    .line 2576
    :cond_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 2577
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v0

    return v0
.end method

.method checkedNextFloat(Ljava/lang/Boolean;)F
    .locals 1
    .param p1, "lastRead"    # Ljava/lang/Boolean;

    .line 2582
    if-nez p1, :cond_0

    .line 2583
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0

    .line 2585
    :cond_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 2586
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v0

    return v0
.end method

.method consume(C)Z
    .locals 3
    .param p1, "ch"    # C

    .line 2651
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2652
    .local v0, "found":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 2653
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2654
    :cond_1
    return v0
.end method

.method consume(Ljava/lang/String;)Z
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .line 2660
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2661
    .local v0, "len":I
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    sub-int/2addr v2, v0

    if-gt v1, v2, :cond_0

    iget-object v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    add-int v3, v1, v0

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2662
    .local v1, "found":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 2663
    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2664
    :cond_1
    return v1
.end method

.method empty()Z
    .locals 2

    .line 2507
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasLetter()Z
    .locals 3

    .line 2827
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 2828
    return v2

    .line 2829
    :cond_0
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2830
    .local v0, "ch":C
    const/16 v1, 0x61

    if-lt v0, v1, :cond_1

    const/16 v1, 0x7a

    if-le v0, v1, :cond_2

    :cond_1
    const/16 v1, 0x41

    if-lt v0, v1, :cond_3

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method isEOL(I)Z
    .locals 1
    .param p1, "c"    # I

    .line 2526
    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

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

.method isWhitespace(I)Z
    .locals 1
    .param p1, "c"    # I

    .line 2512
    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

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

.method nextChar()Ljava/lang/Integer;
    .locals 3

    .line 2605
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    if-ne v0, v1, :cond_0

    .line 2606
    const/4 v0, 0x0

    return-object v0

    .line 2607
    :cond_0
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method nextFlag()Ljava/lang/Boolean;
    .locals 4

    .line 2627
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 2628
    return-object v2

    .line 2629
    :cond_0
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2630
    .local v0, "ch":C
    const/16 v1, 0x30

    const/16 v3, 0x31

    if-eq v0, v1, :cond_2

    if-ne v0, v3, :cond_1

    goto :goto_0

    .line 2634
    :cond_1
    return-object v2

    .line 2631
    :cond_2
    :goto_0
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2632
    if-ne v0, v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method nextFloat()F
    .locals 4

    .line 2546
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->numberParser:Lcom/caverock/androidsvg/NumberParser;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/caverock/androidsvg/NumberParser;->parseNumber(Ljava/lang/String;II)F

    move-result v0

    .line 2547
    .local v0, "val":F
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2548
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->numberParser:Lcom/caverock/androidsvg/NumberParser;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/NumberParser;->getEndPos()I

    move-result v1

    iput v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2549
    :cond_0
    return v0
.end method

.method nextFunction()Ljava/lang/String;
    .locals 5

    .line 2771
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2772
    return-object v1

    .line 2773
    :cond_0
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2775
    .local v0, "start":I
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2776
    .local v2, "ch":I
    :goto_0
    const/16 v3, 0x61

    if-lt v2, v3, :cond_1

    const/16 v3, 0x7a

    if-le v2, v3, :cond_2

    :cond_1
    const/16 v3, 0x41

    if-lt v2, v3, :cond_3

    const/16 v3, 0x5a

    if-gt v2, v3, :cond_3

    .line 2777
    :cond_2
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v2

    goto :goto_0

    .line 2778
    :cond_3
    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2779
    .local v3, "end":I
    :goto_1
    invoke-virtual {p0, v2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->isWhitespace(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2780
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v2

    goto :goto_1

    .line 2781
    :cond_4
    const/16 v4, 0x28

    if-ne v2, v4, :cond_5

    .line 2782
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2783
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2785
    :cond_5
    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2786
    return-object v1
.end method

.method nextLength()Lcom/caverock/androidsvg/SVG$Length;
    .locals 4

    .line 2612
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextFloat()F

    move-result v0

    .line 2613
    .local v0, "scalar":F
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2614
    const/4 v1, 0x0

    return-object v1

    .line 2615
    :cond_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextUnit()Lcom/caverock/androidsvg/SVG$Unit;

    move-result-object v1

    .line 2616
    .local v1, "unit":Lcom/caverock/androidsvg/SVG$Unit;
    if-nez v1, :cond_1

    .line 2617
    new-instance v2, Lcom/caverock/androidsvg/SVG$Length;

    sget-object v3, Lcom/caverock/androidsvg/SVG$Unit;->px:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v2, v0, v3}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    return-object v2

    .line 2619
    :cond_1
    new-instance v2, Lcom/caverock/androidsvg/SVG$Length;

    invoke-direct {v2, v0, v1}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    return-object v2
.end method

.method nextQuotedString()Ljava/lang/String;
    .locals 6

    .line 2838
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2839
    return-object v1

    .line 2840
    :cond_0
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2841
    .local v0, "start":I
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2842
    .local v2, "ch":I
    move v3, v2

    .line 2843
    .local v3, "endQuote":I
    const/16 v4, 0x27

    if-eq v2, v4, :cond_1

    const/16 v4, 0x22

    if-eq v2, v4, :cond_1

    .line 2844
    return-object v1

    .line 2845
    :cond_1
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v2

    .line 2846
    :goto_0
    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_2

    .line 2847
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v2

    goto :goto_0

    .line 2848
    :cond_2
    if-ne v2, v4, :cond_3

    .line 2849
    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2850
    return-object v1

    .line 2852
    :cond_3
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2853
    iget-object v4, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method nextToken()Ljava/lang/String;
    .locals 2

    .line 2691
    const/16 v0, 0x20

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken(CZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method nextToken(C)Ljava/lang/String;
    .locals 1
    .param p1, "terminator"    # C

    .line 2701
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken(CZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method nextToken(CZ)Ljava/lang/String;
    .locals 4
    .param p1, "terminator"    # C
    .param p2, "allowWhitespace"    # Z

    .line 2721
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2722
    return-object v1

    .line 2724
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2725
    .local v0, "ch":I
    if-nez p2, :cond_1

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->isWhitespace(I)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    if-ne v0, p1, :cond_3

    .line 2726
    :cond_2
    return-object v1

    .line 2728
    :cond_3
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2729
    .local v1, "start":I
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v0

    .line 2730
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_6

    .line 2731
    if-ne v0, p1, :cond_4

    .line 2732
    goto :goto_1

    .line 2733
    :cond_4
    if-nez p2, :cond_5

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->isWhitespace(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2734
    goto :goto_1

    .line 2735
    :cond_5
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v0

    goto :goto_0

    .line 2737
    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method nextTokenWithWhitespace(C)Ljava/lang/String;
    .locals 1
    .param p1, "terminator"    # C

    .line 2711
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->nextToken(CZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method nextUnit()Lcom/caverock/androidsvg/SVG$Unit;
    .locals 5

    .line 2804
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2805
    return-object v1

    .line 2806
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2807
    .local v0, "ch":I
    const/16 v2, 0x25

    if-ne v0, v2, :cond_1

    .line 2808
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2809
    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    return-object v1

    .line 2811
    :cond_1
    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    add-int/lit8 v3, v3, -0x2

    if-le v2, v3, :cond_2

    .line 2812
    return-object v1

    .line 2814
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    add-int/lit8 v4, v2, 0x2

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/caverock/androidsvg/SVG$Unit;->valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Unit;

    move-result-object v2

    .line 2815
    .local v2, "result":Lcom/caverock/androidsvg/SVG$Unit;
    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2816
    return-object v2

    .line 2817
    .end local v2    # "result":Lcom/caverock/androidsvg/SVG$Unit;
    :catch_0
    move-exception v2

    .line 2818
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    return-object v1
.end method

.method nextWord()Ljava/lang/String;
    .locals 7

    .line 2747
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2748
    return-object v1

    .line 2749
    :cond_0
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2751
    .local v0, "start":I
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2752
    .local v2, "ch":I
    const/16 v3, 0x7a

    const/16 v4, 0x5a

    const/16 v5, 0x61

    const/16 v6, 0x41

    if-lt v2, v6, :cond_1

    if-le v2, v4, :cond_2

    :cond_1
    if-lt v2, v5, :cond_6

    if-gt v2, v3, :cond_6

    .line 2754
    :cond_2
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v1

    .line 2755
    .end local v2    # "ch":I
    .local v1, "ch":I
    :goto_0
    if-lt v1, v6, :cond_3

    if-le v1, v4, :cond_4

    :cond_3
    if-lt v1, v5, :cond_5

    if-gt v1, v3, :cond_5

    .line 2756
    :cond_4
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->advanceChar()I

    move-result v1

    goto :goto_0

    .line 2757
    :cond_5
    iget-object v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2759
    .end local v1    # "ch":I
    .restart local v2    # "ch":I
    :cond_6
    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2760
    return-object v1
.end method

.method possibleNextFloat()F
    .locals 4

    .line 2559
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipCommaWhitespace()Z

    .line 2560
    iget-object v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->numberParser:Lcom/caverock/androidsvg/NumberParser;

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/caverock/androidsvg/NumberParser;->parseNumber(Ljava/lang/String;II)F

    move-result v0

    .line 2561
    .local v0, "val":F
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2562
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->numberParser:Lcom/caverock/androidsvg/NumberParser;

    invoke-virtual {v1}, Lcom/caverock/androidsvg/NumberParser;->getEndPos()I

    move-result v1

    iput v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2563
    :cond_0
    return v0
.end method

.method restOfText()Ljava/lang/String;
    .locals 2

    .line 2861
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2862
    const/4 v0, 0x0

    return-object v0

    .line 2864
    :cond_0
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2865
    .local v0, "start":I
    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    iput v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2866
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method skipCommaWhitespace()Z
    .locals 3

    .line 2533
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2534
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 2535
    return v2

    .line 2536
    :cond_0
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_1

    .line 2537
    return v2

    .line 2538
    :cond_1
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    .line 2539
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->skipWhitespace()V

    .line 2540
    return v1
.end method

.method skipWhitespace()V
    .locals 2

    .line 2517
    nop

    :goto_0
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    iget v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->inputLength:I

    if-ge v0, v1, :cond_1

    .line 2518
    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->input:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->isWhitespace(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2519
    goto :goto_1

    .line 2520
    :cond_0
    iget v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->position:I

    goto :goto_0

    .line 2522
    :cond_1
    :goto_1
    return-void
.end method
