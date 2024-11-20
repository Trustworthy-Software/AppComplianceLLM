.class public Lcom/caverock/androidsvg/RenderOptions;
.super Ljava/lang/Object;
.source "RenderOptions.java"


# instance fields
.field css:Lcom/caverock/androidsvg/CSSParser$Ruleset;

.field preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

.field targetId:Ljava/lang/String;

.field viewBox:Lcom/caverock/androidsvg/SVG$Box;

.field viewId:Ljava/lang/String;

.field viewPort:Lcom/caverock/androidsvg/SVG$Box;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->css:Lcom/caverock/androidsvg/CSSParser$Ruleset;

    .line 43
    iput-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 44
    iput-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->targetId:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 46
    iput-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->viewId:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/caverock/androidsvg/RenderOptions;)V
    .locals 1
    .param p1, "other"    # Lcom/caverock/androidsvg/RenderOptions;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->css:Lcom/caverock/androidsvg/CSSParser$Ruleset;

    .line 43
    iput-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 44
    iput-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->targetId:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 46
    iput-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->viewId:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 75
    if-nez p1, :cond_0

    .line 76
    return-void

    .line 77
    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/RenderOptions;->css:Lcom/caverock/androidsvg/CSSParser$Ruleset;

    iput-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->css:Lcom/caverock/androidsvg/CSSParser$Ruleset;

    .line 79
    iget-object v0, p1, Lcom/caverock/androidsvg/RenderOptions;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    iput-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 80
    iget-object v0, p1, Lcom/caverock/androidsvg/RenderOptions;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 81
    iget-object v0, p1, Lcom/caverock/androidsvg/RenderOptions;->viewId:Ljava/lang/String;

    iput-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->viewId:Ljava/lang/String;

    .line 82
    iget-object v0, p1, Lcom/caverock/androidsvg/RenderOptions;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    iput-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 83
    return-void
.end method

.method public static create()Lcom/caverock/androidsvg/RenderOptions;
    .locals 1

    .line 65
    new-instance v0, Lcom/caverock/androidsvg/RenderOptions;

    invoke-direct {v0}, Lcom/caverock/androidsvg/RenderOptions;-><init>()V

    return-object v0
.end method


# virtual methods
.method public css(Ljava/lang/String;)Lcom/caverock/androidsvg/RenderOptions;
    .locals 2
    .param p1, "css"    # Ljava/lang/String;

    .line 94
    new-instance v0, Lcom/caverock/androidsvg/CSSParser;

    sget-object v1, Lcom/caverock/androidsvg/CSSParser$Source;->RenderOptions:Lcom/caverock/androidsvg/CSSParser$Source;

    invoke-direct {v0, v1}, Lcom/caverock/androidsvg/CSSParser;-><init>(Lcom/caverock/androidsvg/CSSParser$Source;)V

    .line 95
    .local v0, "parser":Lcom/caverock/androidsvg/CSSParser;
    invoke-virtual {v0, p1}, Lcom/caverock/androidsvg/CSSParser;->parse(Ljava/lang/String;)Lcom/caverock/androidsvg/CSSParser$Ruleset;

    move-result-object v1

    iput-object v1, p0, Lcom/caverock/androidsvg/RenderOptions;->css:Lcom/caverock/androidsvg/CSSParser$Ruleset;

    .line 96
    return-object p0
.end method

.method public hasCss()Z
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->css:Lcom/caverock/androidsvg/CSSParser$Ruleset;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/caverock/androidsvg/CSSParser$Ruleset;->ruleCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPreserveAspectRatio()Z
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTarget()Z
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->targetId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasView()Z
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->viewId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasViewBox()Z
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasViewPort()Z
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public preserveAspectRatio(Lcom/caverock/androidsvg/PreserveAspectRatio;)Lcom/caverock/androidsvg/RenderOptions;
    .locals 0
    .param p1, "preserveAspectRatio"    # Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 119
    iput-object p1, p0, Lcom/caverock/androidsvg/RenderOptions;->preserveAspectRatio:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 120
    return-object p0
.end method

.method public target(Ljava/lang/String;)Lcom/caverock/androidsvg/RenderOptions;
    .locals 0
    .param p1, "targetId"    # Ljava/lang/String;

    .line 227
    iput-object p1, p0, Lcom/caverock/androidsvg/RenderOptions;->targetId:Ljava/lang/String;

    .line 228
    return-object p0
.end method

.method public view(Ljava/lang/String;)Lcom/caverock/androidsvg/RenderOptions;
    .locals 0
    .param p1, "viewId"    # Ljava/lang/String;

    .line 146
    iput-object p1, p0, Lcom/caverock/androidsvg/RenderOptions;->viewId:Ljava/lang/String;

    .line 147
    return-object p0
.end method

.method public viewBox(FFFF)Lcom/caverock/androidsvg/RenderOptions;
    .locals 1
    .param p1, "minX"    # F
    .param p2, "minY"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .line 175
    new-instance v0, Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 176
    return-object p0
.end method

.method public viewPort(FFFF)Lcom/caverock/androidsvg/RenderOptions;
    .locals 1
    .param p1, "minX"    # F
    .param p2, "minY"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .line 203
    new-instance v0, Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/caverock/androidsvg/SVG$Box;-><init>(FFFF)V

    iput-object v0, p0, Lcom/caverock/androidsvg/RenderOptions;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 204
    return-object p0
.end method
