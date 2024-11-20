.class Lcom/caverock/androidsvg/SVG$PathDefinition;
.super Ljava/lang/Object;
.source "SVG.java"

# interfaces
.implements Lcom/caverock/androidsvg/SVG$PathInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PathDefinition"
.end annotation


# static fields
.field private static final ARCTO:B = 0x4t

.field private static final CLOSE:B = 0x8t

.field private static final CUBICTO:B = 0x2t

.field private static final LINETO:B = 0x1t

.field private static final MOVETO:B = 0x0t

.field private static final QUADTO:B = 0x3t


# instance fields
.field private commands:[B

.field private commandsLength:I

.field private coords:[F

.field private coordsLength:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 2176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commands:[B

    .line 2163
    const/4 v1, 0x0

    iput v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    .line 2164
    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    .line 2165
    iput v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    .line 2177
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commands:[B

    .line 2178
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    .line 2179
    return-void
.end method

.method private addCommand(B)V
    .locals 4
    .param p1, "value"    # B

    .line 2190
    iget v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commands:[B

    array-length v2, v1

    if-ne v0, v2, :cond_0

    .line 2191
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 2192
    .local v0, "newCommands":[B
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2193
    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commands:[B

    .line 2195
    .end local v0    # "newCommands":[B
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commands:[B

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    aput-byte p1, v0, v1

    .line 2196
    return-void
.end method

.method private coordsEnsure(I)V
    .locals 4
    .param p1, "num"    # I

    .line 2201
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    array-length v1, v0

    iget v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/2addr v2, p1

    if-ge v1, v2, :cond_0

    .line 2202
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [F

    .line 2203
    .local v1, "newCoords":[F
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2204
    iput-object v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    .line 2206
    .end local v1    # "newCoords":[F
    :cond_0
    return-void
.end method


# virtual methods
.method public arcTo(FFFZZFF)V
    .locals 4
    .param p1, "rx"    # F
    .param p2, "ry"    # F
    .param p3, "xAxisRotation"    # F
    .param p4, "largeArcFlag"    # Z
    .param p5, "sweepFlag"    # Z
    .param p6, "x"    # F
    .param p7, "y"    # F

    .line 2258
    if-eqz p4, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    or-int/lit8 v0, v0, 0x4

    or-int/2addr v0, p5

    .line 2259
    .local v0, "arc":I
    int-to-byte v1, v0

    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVG$PathDefinition;->addCommand(B)V

    .line 2260
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsEnsure(I)V

    .line 2261
    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p1, v1, v2

    .line 2262
    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p2, v1, v3

    .line 2263
    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p3, v1, v2

    .line 2264
    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p6, v1, v3

    .line 2265
    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p7, v1, v2

    .line 2266
    return-void
.end method

.method public close()V
    .locals 1

    .line 2272
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->addCommand(B)V

    .line 2273
    return-void
.end method

.method public cubicTo(FFFFFF)V
    .locals 3
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "x3"    # F
    .param p6, "y3"    # F

    .line 2232
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->addCommand(B)V

    .line 2233
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsEnsure(I)V

    .line 2234
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p1, v0, v1

    .line 2235
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p2, v0, v2

    .line 2236
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p3, v0, v1

    .line 2237
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p4, v0, v2

    .line 2238
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p5, v0, v1

    .line 2239
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p6, v0, v2

    .line 2240
    return-void
.end method

.method enumeratePath(Lcom/caverock/androidsvg/SVG$PathInterface;)V
    .locals 14
    .param p1, "handler"    # Lcom/caverock/androidsvg/SVG$PathInterface;

    .line 2278
    const/4 v0, 0x0

    .line 2280
    .local v0, "coordsPos":I
    const/4 v1, 0x0

    .local v1, "commandPos":I
    :goto_0
    iget v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    if-ge v1, v2, :cond_2

    .line 2282
    iget-object v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commands:[B

    aget-byte v2, v2, v1

    .line 2283
    .local v2, "command":B
    packed-switch v2, :pswitch_data_0

    .line 2301
    :pswitch_0
    and-int/lit8 v3, v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    move v10, v5

    goto :goto_1

    .line 2298
    :pswitch_1
    invoke-interface {p1}, Lcom/caverock/androidsvg/SVG$PathInterface;->close()V

    .line 2299
    goto/16 :goto_3

    .line 2295
    :pswitch_2
    iget-object v3, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "coordsPos":I
    .local v4, "coordsPos":I
    aget v0, v3, v0

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "coordsPos":I
    .local v5, "coordsPos":I
    aget v4, v3, v4

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "coordsPos":I
    .local v6, "coordsPos":I
    aget v5, v3, v5

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "coordsPos":I
    .local v7, "coordsPos":I
    aget v3, v3, v6

    invoke-interface {p1, v0, v4, v5, v3}, Lcom/caverock/androidsvg/SVG$PathInterface;->quadTo(FFFF)V

    .line 2296
    move v0, v7

    goto :goto_3

    .line 2292
    .end local v7    # "coordsPos":I
    .restart local v0    # "coordsPos":I
    :pswitch_3
    iget-object v3, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "coordsPos":I
    .restart local v4    # "coordsPos":I
    aget v6, v3, v0

    add-int/lit8 v0, v4, 0x1

    .end local v4    # "coordsPos":I
    .restart local v0    # "coordsPos":I
    aget v7, v3, v4

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "coordsPos":I
    .restart local v4    # "coordsPos":I
    aget v8, v3, v0

    add-int/lit8 v0, v4, 0x1

    .end local v4    # "coordsPos":I
    .restart local v0    # "coordsPos":I
    aget v9, v3, v4

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "coordsPos":I
    .restart local v4    # "coordsPos":I
    aget v10, v3, v0

    add-int/lit8 v0, v4, 0x1

    .end local v4    # "coordsPos":I
    .restart local v0    # "coordsPos":I
    aget v11, v3, v4

    move-object v5, p1

    invoke-interface/range {v5 .. v11}, Lcom/caverock/androidsvg/SVG$PathInterface;->cubicTo(FFFFFF)V

    .line 2293
    goto :goto_3

    .line 2289
    :pswitch_4
    iget-object v3, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "coordsPos":I
    .restart local v4    # "coordsPos":I
    aget v0, v3, v0

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "coordsPos":I
    .restart local v5    # "coordsPos":I
    aget v3, v3, v4

    invoke-interface {p1, v0, v3}, Lcom/caverock/androidsvg/SVG$PathInterface;->lineTo(FF)V

    .line 2290
    move v0, v5

    goto :goto_3

    .line 2286
    .end local v5    # "coordsPos":I
    .restart local v0    # "coordsPos":I
    :pswitch_5
    iget-object v3, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "coordsPos":I
    .restart local v4    # "coordsPos":I
    aget v0, v3, v0

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "coordsPos":I
    .restart local v5    # "coordsPos":I
    aget v3, v3, v4

    invoke-interface {p1, v0, v3}, Lcom/caverock/androidsvg/SVG$PathInterface;->moveTo(FF)V

    .line 2287
    move v0, v5

    goto :goto_3

    .line 2301
    .end local v5    # "coordsPos":I
    .restart local v0    # "coordsPos":I
    :cond_0
    move v10, v4

    .line 2302
    .local v10, "largeArcFlag":Z
    :goto_1
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_1

    move v11, v5

    goto :goto_2

    :cond_1
    move v11, v4

    .line 2303
    .local v11, "sweepFlag":Z
    :goto_2
    iget-object v3, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "coordsPos":I
    .restart local v4    # "coordsPos":I
    aget v7, v3, v0

    add-int/lit8 v0, v4, 0x1

    .end local v4    # "coordsPos":I
    .restart local v0    # "coordsPos":I
    aget v8, v3, v4

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "coordsPos":I
    .restart local v4    # "coordsPos":I
    aget v9, v3, v0

    add-int/lit8 v0, v4, 0x1

    .end local v4    # "coordsPos":I
    .restart local v0    # "coordsPos":I
    aget v12, v3, v4

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "coordsPos":I
    .restart local v4    # "coordsPos":I
    aget v13, v3, v0

    move-object v6, p1

    invoke-interface/range {v6 .. v13}, Lcom/caverock/androidsvg/SVG$PathInterface;->arcTo(FFFZZFF)V

    move v0, v4

    .line 2280
    .end local v2    # "command":B
    .end local v4    # "coordsPos":I
    .end local v10    # "largeArcFlag":Z
    .end local v11    # "sweepFlag":Z
    .restart local v0    # "coordsPos":I
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 2306
    .end local v1    # "commandPos":I
    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method isEmpty()Z
    .locals 1

    .line 2184
    iget v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->commandsLength:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lineTo(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 2222
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->addCommand(B)V

    .line 2223
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsEnsure(I)V

    .line 2224
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p1, v0, v1

    .line 2225
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p2, v0, v2

    .line 2226
    return-void
.end method

.method public moveTo(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 2212
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->addCommand(B)V

    .line 2213
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsEnsure(I)V

    .line 2214
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p1, v0, v1

    .line 2215
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p2, v0, v2

    .line 2216
    return-void
.end method

.method public quadTo(FFFF)V
    .locals 3
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .line 2246
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->addCommand(B)V

    .line 2247
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsEnsure(I)V

    .line 2248
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coords:[F

    iget v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p1, v0, v1

    .line 2249
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p2, v0, v2

    .line 2250
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p3, v0, v1

    .line 2251
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/caverock/androidsvg/SVG$PathDefinition;->coordsLength:I

    aput p4, v0, v2

    .line 2252
    return-void
.end method
