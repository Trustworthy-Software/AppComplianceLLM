.class Lcom/caverock/androidsvg/SVG$Style;
.super Ljava/lang/Object;
.source "SVG.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caverock/androidsvg/SVG$Style$RenderQuality;,
        Lcom/caverock/androidsvg/SVG$Style$VectorEffect;,
        Lcom/caverock/androidsvg/SVG$Style$TextDirection;,
        Lcom/caverock/androidsvg/SVG$Style$TextDecoration;,
        Lcom/caverock/androidsvg/SVG$Style$TextAnchor;,
        Lcom/caverock/androidsvg/SVG$Style$FontStyle;,
        Lcom/caverock/androidsvg/SVG$Style$LineJoin;,
        Lcom/caverock/androidsvg/SVG$Style$LineCap;,
        Lcom/caverock/androidsvg/SVG$Style$FillRule;
    }
.end annotation


# static fields
.field static final FONT_WEIGHT_BOLD:I = 0x2bc

.field static final FONT_WEIGHT_BOLDER:I = 0x1

.field static final FONT_WEIGHT_LIGHTER:I = -0x1

.field static final FONT_WEIGHT_NORMAL:I = 0x190


# instance fields
.field clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

.field clipPath:Ljava/lang/String;

.field clipRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

.field color:Lcom/caverock/androidsvg/SVG$Colour;

.field direction:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

.field display:Ljava/lang/Boolean;

.field fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

.field fillOpacity:Ljava/lang/Float;

.field fillRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

.field fontFamily:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field fontSize:Lcom/caverock/androidsvg/SVG$Length;

.field fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

.field fontWeight:Ljava/lang/Integer;

.field imageRendering:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

.field markerEnd:Ljava/lang/String;

.field markerMid:Ljava/lang/String;

.field markerStart:Ljava/lang/String;

.field mask:Ljava/lang/String;

.field opacity:Ljava/lang/Float;

.field overflow:Ljava/lang/Boolean;

.field solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

.field solidOpacity:Ljava/lang/Float;

.field specifiedFlags:J

.field stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

.field stopOpacity:Ljava/lang/Float;

.field stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

.field strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

.field strokeDashOffset:Lcom/caverock/androidsvg/SVG$Length;

.field strokeLineCap:Lcom/caverock/androidsvg/SVG$Style$LineCap;

.field strokeLineJoin:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

.field strokeMiterLimit:Ljava/lang/Float;

.field strokeOpacity:Ljava/lang/Float;

.field strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

.field textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

.field textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

.field vectorEffect:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

.field viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

.field viewportFillOpacity:Ljava/lang/Float;

.field visibility:Ljava/lang/Boolean;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1128
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    return-void
.end method

.method static getDefaultStyle()Lcom/caverock/androidsvg/SVG$Style;
    .locals 6

    .line 1255
    new-instance v0, Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Style;-><init>()V

    .line 1256
    .local v0, "def":Lcom/caverock/androidsvg/SVG$Style;
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/caverock/androidsvg/SVG$Style;->specifiedFlags:J

    .line 1258
    sget-object v1, Lcom/caverock/androidsvg/SVG$Colour;->BLACK:Lcom/caverock/androidsvg/SVG$Colour;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->fill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 1259
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$FillRule;->NonZero:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->fillRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    .line 1260
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Lcom/caverock/androidsvg/SVG$Style;->fillOpacity:Ljava/lang/Float;

    .line 1261
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->stroke:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 1262
    iput-object v2, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeOpacity:Ljava/lang/Float;

    .line 1263
    new-instance v4, Lcom/caverock/androidsvg/SVG$Length;

    invoke-direct {v4, v1}, Lcom/caverock/androidsvg/SVG$Length;-><init>(F)V

    iput-object v4, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeWidth:Lcom/caverock/androidsvg/SVG$Length;

    .line 1264
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$LineCap;->Butt:Lcom/caverock/androidsvg/SVG$Style$LineCap;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeLineCap:Lcom/caverock/androidsvg/SVG$Style$LineCap;

    .line 1265
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$LineJoin;->Miter:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeLineJoin:Lcom/caverock/androidsvg/SVG$Style$LineJoin;

    .line 1266
    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeMiterLimit:Ljava/lang/Float;

    .line 1267
    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    .line 1268
    new-instance v1, Lcom/caverock/androidsvg/SVG$Length;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/caverock/androidsvg/SVG$Length;-><init>(F)V

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashOffset:Lcom/caverock/androidsvg/SVG$Length;

    .line 1269
    iput-object v2, v0, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    .line 1270
    sget-object v1, Lcom/caverock/androidsvg/SVG$Colour;->BLACK:Lcom/caverock/androidsvg/SVG$Colour;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->color:Lcom/caverock/androidsvg/SVG$Colour;

    .line 1271
    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->fontFamily:Ljava/util/List;

    .line 1272
    new-instance v1, Lcom/caverock/androidsvg/SVG$Length;

    const/high16 v4, 0x41400000    # 12.0f

    sget-object v5, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-direct {v1, v4, v5}, Lcom/caverock/androidsvg/SVG$Length;-><init>(FLcom/caverock/androidsvg/SVG$Unit;)V

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->fontSize:Lcom/caverock/androidsvg/SVG$Length;

    .line 1273
    const/16 v1, 0x190

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->fontWeight:Ljava/lang/Integer;

    .line 1274
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$FontStyle;->Normal:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->fontStyle:Lcom/caverock/androidsvg/SVG$Style$FontStyle;

    .line 1275
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->None:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->textDecoration:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    .line 1276
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$TextDirection;->LTR:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->direction:Lcom/caverock/androidsvg/SVG$Style$TextDirection;

    .line 1277
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$TextAnchor;->Start:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->textAnchor:Lcom/caverock/androidsvg/SVG$Style$TextAnchor;

    .line 1278
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    .line 1279
    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    .line 1280
    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->markerStart:Ljava/lang/String;

    .line 1281
    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->markerMid:Ljava/lang/String;

    .line 1282
    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->markerEnd:Ljava/lang/String;

    .line 1283
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    .line 1284
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->visibility:Ljava/lang/Boolean;

    .line 1285
    sget-object v1, Lcom/caverock/androidsvg/SVG$Colour;->BLACK:Lcom/caverock/androidsvg/SVG$Colour;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 1286
    iput-object v2, v0, Lcom/caverock/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    .line 1287
    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    .line 1288
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$FillRule;->NonZero:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->clipRule:Lcom/caverock/androidsvg/SVG$Style$FillRule;

    .line 1289
    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    .line 1290
    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 1291
    iput-object v2, v0, Lcom/caverock/androidsvg/SVG$Style;->solidOpacity:Ljava/lang/Float;

    .line 1292
    iput-object v3, v0, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 1293
    iput-object v2, v0, Lcom/caverock/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    .line 1294
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;->None:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->vectorEffect:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    .line 1295
    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$RenderQuality;->auto:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->imageRendering:Lcom/caverock/androidsvg/SVG$Style$RenderQuality;

    .line 1296
    return-object v0
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1323
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$Style;

    .line 1324
    .local v0, "obj":Lcom/caverock/androidsvg/SVG$Style;
    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    if-eqz v1, :cond_0

    .line 1325
    invoke-virtual {v1}, [Lcom/caverock/androidsvg/SVG$Length;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/caverock/androidsvg/SVG$Length;

    iput-object v1, v0, Lcom/caverock/androidsvg/SVG$Style;->strokeDashArray:[Lcom/caverock/androidsvg/SVG$Length;

    .line 1327
    :cond_0
    return-object v0
.end method

.method resetNonInheritingProperties(Z)V
    .locals 3
    .param p1, "isRootSVG"    # Z

    .line 1304
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->display:Ljava/lang/Boolean;

    .line 1305
    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->overflow:Ljava/lang/Boolean;

    .line 1306
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->clip:Lcom/caverock/androidsvg/SVG$CSSClipRect;

    .line 1307
    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->clipPath:Ljava/lang/String;

    .line 1308
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p0, Lcom/caverock/androidsvg/SVG$Style;->opacity:Ljava/lang/Float;

    .line 1309
    sget-object v2, Lcom/caverock/androidsvg/SVG$Colour;->BLACK:Lcom/caverock/androidsvg/SVG$Colour;

    iput-object v2, p0, Lcom/caverock/androidsvg/SVG$Style;->stopColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 1310
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p0, Lcom/caverock/androidsvg/SVG$Style;->stopOpacity:Ljava/lang/Float;

    .line 1311
    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->mask:Ljava/lang/String;

    .line 1312
    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->solidColor:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 1313
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p0, Lcom/caverock/androidsvg/SVG$Style;->solidOpacity:Ljava/lang/Float;

    .line 1314
    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->viewportFill:Lcom/caverock/androidsvg/SVG$SvgPaint;

    .line 1315
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->viewportFillOpacity:Ljava/lang/Float;

    .line 1316
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$VectorEffect;->None:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Style;->vectorEffect:Lcom/caverock/androidsvg/SVG$Style$VectorEffect;

    .line 1317
    return-void
.end method
