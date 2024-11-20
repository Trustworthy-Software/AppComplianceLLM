.class Lcom/caverock/androidsvg/SVG$PaintReference;
.super Lcom/caverock/androidsvg/SVG$SvgPaint;
.source "SVG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PaintReference"
.end annotation


# instance fields
.field fallback:Lcom/caverock/androidsvg/SVG$SvgPaint;

.field href:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/caverock/androidsvg/SVG$SvgPaint;)V
    .locals 0
    .param p1, "href"    # Ljava/lang/String;
    .param p2, "fallback"    # Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 1379
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVG$SvgPaint;-><init>()V

    .line 1380
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$PaintReference;->href:Ljava/lang/String;

    .line 1381
    iput-object p2, p0, Lcom/caverock/androidsvg/SVG$PaintReference;->fallback:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 1382
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$PaintReference;->href:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$PaintReference;->fallback:Lcom/caverock/androidsvg/SVG$SvgPaint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
