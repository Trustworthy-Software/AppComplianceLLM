.class Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;
.super Ljava/lang/Object;
.source "SVGAndroidRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVGAndroidRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RendererState"
.end annotation


# instance fields
.field fillPaint:Landroid/graphics/Paint;

.field hasFill:Z

.field hasStroke:Z

.field spacePreserve:Z

.field strokePaint:Landroid/graphics/Paint;

.field style:Lcom/caverock/androidsvg/SVG$Style;

.field final synthetic this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

.field viewBox:Lcom/caverock/androidsvg/SVG$Box;

.field viewPort:Lcom/caverock/androidsvg/SVG$Box;


# direct methods
.method constructor <init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;)V
    .locals 2

    .line 133
    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    .line 135
    const/16 v0, 0x181

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 136
    iget-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 137
    iget-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 139
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    .line 140
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 141
    iget-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 142
    iget-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 144
    invoke-static {}, Lcom/caverock/androidsvg/SVG$Style;->getDefaultStyle()Lcom/caverock/androidsvg/SVG$Style;

    move-result-object p1

    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 145
    return-void
.end method

.method constructor <init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;)V
    .locals 2
    .param p2, "copy"    # Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;

    .line 148
    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->this$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iget-boolean p1, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    iput-boolean p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasFill:Z

    .line 150
    iget-boolean p1, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    iput-boolean p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->hasStroke:Z

    .line 151
    new-instance p1, Landroid/graphics/Paint;

    iget-object v0, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->fillPaint:Landroid/graphics/Paint;

    .line 152
    new-instance p1, Landroid/graphics/Paint;

    iget-object v0, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->strokePaint:Landroid/graphics/Paint;

    .line 153
    iget-object p1, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz p1, :cond_0

    .line 154
    new-instance p1, Lcom/caverock/androidsvg/SVG$Box;

    iget-object v0, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {p1, v0}, Lcom/caverock/androidsvg/SVG$Box;-><init>(Lcom/caverock/androidsvg/SVG$Box;)V

    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewPort:Lcom/caverock/androidsvg/SVG$Box;

    .line 155
    :cond_0
    iget-object p1, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    if-eqz p1, :cond_1

    .line 156
    new-instance p1, Lcom/caverock/androidsvg/SVG$Box;

    iget-object v0, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    invoke-direct {p1, v0}, Lcom/caverock/androidsvg/SVG$Box;-><init>(Lcom/caverock/androidsvg/SVG$Box;)V

    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->viewBox:Lcom/caverock/androidsvg/SVG$Box;

    .line 157
    :cond_1
    iget-boolean p1, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->spacePreserve:Z

    iput-boolean p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->spacePreserve:Z

    .line 160
    :try_start_0
    iget-object p1, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG$Style;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/caverock/androidsvg/SVG$Style;

    iput-object p1, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    goto :goto_0

    .line 162
    :catch_0
    move-exception p1

    .line 165
    .local p1, "e":Ljava/lang/CloneNotSupportedException;
    const-string v0, "SVGAndroidRenderer"

    const-string v1, "Unexpected clone error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    invoke-static {}, Lcom/caverock/androidsvg/SVG$Style;->getDefaultStyle()Lcom/caverock/androidsvg/SVG$Style;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer$RendererState;->style:Lcom/caverock/androidsvg/SVG$Style;

    .line 168
    .end local p1    # "e":Ljava/lang/CloneNotSupportedException;
    :goto_0
    return-void
.end method
