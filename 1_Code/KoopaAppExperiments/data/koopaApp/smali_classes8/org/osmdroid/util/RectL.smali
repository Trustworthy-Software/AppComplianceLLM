.class public Lorg/osmdroid/util/RectL;
.super Ljava/lang/Object;
.source "RectL.java"


# instance fields
.field public bottom:J

.field public left:J

.field public right:J

.field public top:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(JJJJ)V
    .locals 0
    .param p1, "pLeft"    # J
    .param p3, "pTop"    # J
    .param p5, "pRight"    # J
    .param p7, "pBottom"    # J

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual/range {p0 .. p8}, Lorg/osmdroid/util/RectL;->set(JJJJ)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/util/RectL;)V
    .locals 0
    .param p1, "pOther"    # Lorg/osmdroid/util/RectL;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p0, p1}, Lorg/osmdroid/util/RectL;->set(Lorg/osmdroid/util/RectL;)V

    .line 29
    return-void
.end method

.method public static getBounds(Landroid/graphics/Rect;IIDLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 26
    .param p0, "pIn"    # Landroid/graphics/Rect;
    .param p1, "pCenterX"    # I
    .param p2, "pCenterY"    # I
    .param p3, "pDegrees"    # D
    .param p5, "pReuse"    # Landroid/graphics/Rect;

    .line 206
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    if-eqz p5, :cond_0

    move-object/from16 v3, p5

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 207
    .local v3, "out":Landroid/graphics/Rect;
    :goto_0
    const-wide/16 v4, 0x0

    cmpl-double v4, p3, v4

    if-nez v4, :cond_1

    .line 208
    iget v4, v0, Landroid/graphics/Rect;->top:I

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 209
    iget v4, v0, Landroid/graphics/Rect;->left:I

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 210
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 211
    iget v4, v0, Landroid/graphics/Rect;->right:I

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 212
    return-object v3

    .line 214
    :cond_1
    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double v4, v4, p3

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double/2addr v4, v6

    .line 215
    .local v4, "radians":D
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    .line 216
    .local v18, "cos":D
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    .line 221
    .local v20, "sin":D
    iget v14, v0, Landroid/graphics/Rect;->left:I

    .line 222
    .local v14, "inputX":I
    iget v15, v0, Landroid/graphics/Rect;->top:I

    .line 223
    .local v15, "inputY":I
    int-to-long v6, v14

    int-to-long v8, v15

    int-to-long v10, v1

    int-to-long v12, v2

    move-wide/from16 v22, v4

    move v4, v14

    move v5, v15

    .end local v14    # "inputX":I
    .end local v15    # "inputY":I
    .local v4, "inputX":I
    .local v5, "inputY":I
    .local v22, "radians":D
    move-wide/from16 v14, v18

    move-wide/from16 v16, v20

    invoke-static/range {v6 .. v17}, Lorg/osmdroid/util/RectL;->getRotatedX(JJJJDD)J

    move-result-wide v6

    long-to-int v14, v6

    .line 224
    .local v14, "outputX":I
    int-to-long v6, v4

    int-to-long v8, v5

    int-to-long v10, v1

    int-to-long v12, v2

    move/from16 v24, v4

    move v4, v14

    .end local v14    # "outputX":I
    .local v4, "outputX":I
    .local v24, "inputX":I
    move-wide/from16 v14, v18

    invoke-static/range {v6 .. v17}, Lorg/osmdroid/util/RectL;->getRotatedY(JJJJDD)J

    move-result-wide v6

    long-to-int v14, v6

    .line 225
    .local v14, "outputY":I
    iput v14, v3, Landroid/graphics/Rect;->bottom:I

    iput v14, v3, Landroid/graphics/Rect;->top:I

    .line 226
    iput v4, v3, Landroid/graphics/Rect;->right:I

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 227
    iget v15, v0, Landroid/graphics/Rect;->right:I

    .line 228
    .end local v24    # "inputX":I
    .local v15, "inputX":I
    iget v5, v0, Landroid/graphics/Rect;->top:I

    .line 229
    int-to-long v6, v15

    int-to-long v8, v5

    int-to-long v10, v1

    int-to-long v12, v2

    move/from16 v25, v4

    move/from16 v24, v14

    move v4, v15

    .end local v14    # "outputY":I
    .end local v15    # "inputX":I
    .local v4, "inputX":I
    .local v24, "outputY":I
    .local v25, "outputX":I
    move-wide/from16 v14, v18

    invoke-static/range {v6 .. v17}, Lorg/osmdroid/util/RectL;->getRotatedX(JJJJDD)J

    move-result-wide v6

    long-to-int v14, v6

    .line 230
    .end local v25    # "outputX":I
    .local v14, "outputX":I
    int-to-long v6, v4

    int-to-long v8, v5

    int-to-long v10, v1

    int-to-long v12, v2

    move/from16 v25, v4

    move v4, v14

    .end local v14    # "outputX":I
    .local v4, "outputX":I
    .local v25, "inputX":I
    move-wide/from16 v14, v18

    invoke-static/range {v6 .. v17}, Lorg/osmdroid/util/RectL;->getRotatedY(JJJJDD)J

    move-result-wide v6

    long-to-int v14, v6

    .line 231
    .end local v24    # "outputY":I
    .local v14, "outputY":I
    iget v6, v3, Landroid/graphics/Rect;->top:I

    if-le v6, v14, :cond_2

    .line 232
    iput v14, v3, Landroid/graphics/Rect;->top:I

    .line 234
    :cond_2
    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    if-ge v6, v14, :cond_3

    .line 235
    iput v14, v3, Landroid/graphics/Rect;->bottom:I

    .line 237
    :cond_3
    iget v6, v3, Landroid/graphics/Rect;->left:I

    if-le v6, v4, :cond_4

    .line 238
    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 240
    :cond_4
    iget v6, v3, Landroid/graphics/Rect;->right:I

    if-ge v6, v4, :cond_5

    .line 241
    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 243
    :cond_5
    iget v15, v0, Landroid/graphics/Rect;->right:I

    .line 244
    .end local v25    # "inputX":I
    .restart local v15    # "inputX":I
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 245
    int-to-long v6, v15

    int-to-long v8, v5

    int-to-long v10, v1

    int-to-long v12, v2

    move/from16 v25, v4

    move/from16 v24, v14

    move v4, v15

    .end local v14    # "outputY":I
    .end local v15    # "inputX":I
    .local v4, "inputX":I
    .restart local v24    # "outputY":I
    .local v25, "outputX":I
    move-wide/from16 v14, v18

    move-wide/from16 v16, v20

    invoke-static/range {v6 .. v17}, Lorg/osmdroid/util/RectL;->getRotatedX(JJJJDD)J

    move-result-wide v6

    long-to-int v14, v6

    .line 246
    .end local v25    # "outputX":I
    .local v14, "outputX":I
    int-to-long v6, v4

    int-to-long v8, v5

    int-to-long v10, v1

    int-to-long v12, v2

    move/from16 v25, v4

    move v4, v14

    .end local v14    # "outputX":I
    .local v4, "outputX":I
    .local v25, "inputX":I
    move-wide/from16 v14, v18

    invoke-static/range {v6 .. v17}, Lorg/osmdroid/util/RectL;->getRotatedY(JJJJDD)J

    move-result-wide v6

    long-to-int v14, v6

    .line 247
    .end local v24    # "outputY":I
    .local v14, "outputY":I
    iget v6, v3, Landroid/graphics/Rect;->top:I

    if-le v6, v14, :cond_6

    .line 248
    iput v14, v3, Landroid/graphics/Rect;->top:I

    .line 250
    :cond_6
    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    if-ge v6, v14, :cond_7

    .line 251
    iput v14, v3, Landroid/graphics/Rect;->bottom:I

    .line 253
    :cond_7
    iget v6, v3, Landroid/graphics/Rect;->left:I

    if-le v6, v4, :cond_8

    .line 254
    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 256
    :cond_8
    iget v6, v3, Landroid/graphics/Rect;->right:I

    if-ge v6, v4, :cond_9

    .line 257
    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 259
    :cond_9
    iget v15, v0, Landroid/graphics/Rect;->left:I

    .line 260
    .end local v25    # "inputX":I
    .restart local v15    # "inputX":I
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 261
    int-to-long v6, v15

    int-to-long v8, v5

    int-to-long v10, v1

    int-to-long v12, v2

    move/from16 v24, v14

    move v0, v15

    .end local v14    # "outputY":I
    .end local v15    # "inputX":I
    .local v0, "inputX":I
    .restart local v24    # "outputY":I
    move-wide/from16 v14, v18

    move-wide/from16 v16, v20

    invoke-static/range {v6 .. v17}, Lorg/osmdroid/util/RectL;->getRotatedX(JJJJDD)J

    move-result-wide v6

    long-to-int v4, v6

    .line 262
    int-to-long v6, v0

    int-to-long v8, v5

    int-to-long v10, v1

    int-to-long v12, v2

    invoke-static/range {v6 .. v17}, Lorg/osmdroid/util/RectL;->getRotatedY(JJJJDD)J

    move-result-wide v6

    long-to-int v6, v6

    .line 263
    .end local v24    # "outputY":I
    .local v6, "outputY":I
    iget v7, v3, Landroid/graphics/Rect;->top:I

    if-le v7, v6, :cond_a

    .line 264
    iput v6, v3, Landroid/graphics/Rect;->top:I

    .line 266
    :cond_a
    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    if-ge v7, v6, :cond_b

    .line 267
    iput v6, v3, Landroid/graphics/Rect;->bottom:I

    .line 269
    :cond_b
    iget v7, v3, Landroid/graphics/Rect;->left:I

    if-le v7, v4, :cond_c

    .line 270
    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 272
    :cond_c
    iget v7, v3, Landroid/graphics/Rect;->right:I

    if-ge v7, v4, :cond_d

    .line 273
    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 275
    :cond_d
    return-object v3
.end method

.method public static getBounds(Lorg/osmdroid/util/RectL;JJDLorg/osmdroid/util/RectL;)Lorg/osmdroid/util/RectL;
    .locals 28
    .param p0, "pIn"    # Lorg/osmdroid/util/RectL;
    .param p1, "pCenterX"    # J
    .param p3, "pCenterY"    # J
    .param p5, "pDegrees"    # D
    .param p7, "pReuse"    # Lorg/osmdroid/util/RectL;

    .line 123
    move-object/from16 v0, p0

    if-eqz p7, :cond_0

    move-object/from16 v1, p7

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/osmdroid/util/RectL;

    invoke-direct {v1}, Lorg/osmdroid/util/RectL;-><init>()V

    .line 124
    .local v1, "out":Lorg/osmdroid/util/RectL;
    :goto_0
    const-wide/16 v2, 0x0

    cmpl-double v2, p5, v2

    if-nez v2, :cond_1

    .line 125
    iget-wide v2, v0, Lorg/osmdroid/util/RectL;->top:J

    iput-wide v2, v1, Lorg/osmdroid/util/RectL;->top:J

    .line 126
    iget-wide v2, v0, Lorg/osmdroid/util/RectL;->left:J

    iput-wide v2, v1, Lorg/osmdroid/util/RectL;->left:J

    .line 127
    iget-wide v2, v0, Lorg/osmdroid/util/RectL;->bottom:J

    iput-wide v2, v1, Lorg/osmdroid/util/RectL;->bottom:J

    .line 128
    iget-wide v2, v0, Lorg/osmdroid/util/RectL;->right:J

    iput-wide v2, v1, Lorg/osmdroid/util/RectL;->right:J

    .line 129
    return-object v1

    .line 131
    :cond_1
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double v2, v2, p5

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    .line 132
    .local v2, "radians":D
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    .line 133
    .local v16, "cos":D
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    .line 138
    .local v18, "sin":D
    iget-wide v14, v0, Lorg/osmdroid/util/RectL;->left:J

    .line 139
    .local v14, "inputX":J
    iget-wide v12, v0, Lorg/osmdroid/util/RectL;->top:J

    .line 140
    .local v12, "inputY":J
    move-wide v4, v14

    move-wide v6, v12

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    move-wide/from16 v20, v12

    .end local v12    # "inputY":J
    .local v20, "inputY":J
    move-wide/from16 v12, v16

    move-wide/from16 v22, v14

    .end local v14    # "inputX":J
    .local v22, "inputX":J
    move-wide/from16 v14, v18

    invoke-static/range {v4 .. v15}, Lorg/osmdroid/util/RectL;->getRotatedX(JJJJDD)J

    move-result-wide v14

    .line 141
    .local v14, "outputX":J
    move-wide/from16 v4, v22

    move-wide/from16 v6, v20

    move-wide/from16 v24, v2

    move-wide v2, v14

    .end local v14    # "outputX":J
    .local v2, "outputX":J
    .local v24, "radians":D
    move-wide/from16 v14, v18

    invoke-static/range {v4 .. v15}, Lorg/osmdroid/util/RectL;->getRotatedY(JJJJDD)J

    move-result-wide v14

    .line 142
    .local v14, "outputY":J
    iput-wide v14, v1, Lorg/osmdroid/util/RectL;->bottom:J

    iput-wide v14, v1, Lorg/osmdroid/util/RectL;->top:J

    .line 143
    iput-wide v2, v1, Lorg/osmdroid/util/RectL;->right:J

    iput-wide v2, v1, Lorg/osmdroid/util/RectL;->left:J

    .line 144
    iget-wide v12, v0, Lorg/osmdroid/util/RectL;->right:J

    .line 145
    .end local v22    # "inputX":J
    .local v12, "inputX":J
    iget-wide v10, v0, Lorg/osmdroid/util/RectL;->top:J

    .line 146
    .end local v20    # "inputY":J
    .local v10, "inputY":J
    move-wide v4, v12

    move-wide v6, v10

    move-wide/from16 v20, v10

    .end local v10    # "inputY":J
    .restart local v20    # "inputY":J
    move-wide/from16 v10, p3

    move-wide/from16 v22, v12

    .end local v12    # "inputX":J
    .restart local v22    # "inputX":J
    move-wide/from16 v12, v16

    move-wide/from16 v26, v14

    .end local v14    # "outputY":J
    .local v26, "outputY":J
    move-wide/from16 v14, v18

    invoke-static/range {v4 .. v15}, Lorg/osmdroid/util/RectL;->getRotatedX(JJJJDD)J

    move-result-wide v2

    .line 147
    move-wide/from16 v4, v22

    move-wide/from16 v6, v20

    invoke-static/range {v4 .. v15}, Lorg/osmdroid/util/RectL;->getRotatedY(JJJJDD)J

    move-result-wide v14

    .line 148
    .end local v26    # "outputY":J
    .restart local v14    # "outputY":J
    iget-wide v4, v1, Lorg/osmdroid/util/RectL;->top:J

    cmp-long v4, v4, v14

    if-lez v4, :cond_2

    .line 149
    iput-wide v14, v1, Lorg/osmdroid/util/RectL;->top:J

    .line 151
    :cond_2
    iget-wide v4, v1, Lorg/osmdroid/util/RectL;->bottom:J

    cmp-long v4, v4, v14

    if-gez v4, :cond_3

    .line 152
    iput-wide v14, v1, Lorg/osmdroid/util/RectL;->bottom:J

    .line 154
    :cond_3
    iget-wide v4, v1, Lorg/osmdroid/util/RectL;->left:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_4

    .line 155
    iput-wide v2, v1, Lorg/osmdroid/util/RectL;->left:J

    .line 157
    :cond_4
    iget-wide v4, v1, Lorg/osmdroid/util/RectL;->right:J

    cmp-long v4, v4, v2

    if-gez v4, :cond_5

    .line 158
    iput-wide v2, v1, Lorg/osmdroid/util/RectL;->right:J

    .line 160
    :cond_5
    iget-wide v12, v0, Lorg/osmdroid/util/RectL;->right:J

    .line 161
    .end local v22    # "inputX":J
    .restart local v12    # "inputX":J
    iget-wide v10, v0, Lorg/osmdroid/util/RectL;->bottom:J

    .line 162
    .end local v20    # "inputY":J
    .restart local v10    # "inputY":J
    move-wide v4, v12

    move-wide v6, v10

    move-wide/from16 v8, p1

    move-wide/from16 v20, v10

    .end local v10    # "inputY":J
    .restart local v20    # "inputY":J
    move-wide/from16 v10, p3

    move-wide/from16 v22, v12

    .end local v12    # "inputX":J
    .restart local v22    # "inputX":J
    move-wide/from16 v12, v16

    move-wide/from16 v26, v14

    .end local v14    # "outputY":J
    .restart local v26    # "outputY":J
    move-wide/from16 v14, v18

    invoke-static/range {v4 .. v15}, Lorg/osmdroid/util/RectL;->getRotatedX(JJJJDD)J

    move-result-wide v2

    .line 163
    move-wide/from16 v4, v22

    move-wide/from16 v6, v20

    invoke-static/range {v4 .. v15}, Lorg/osmdroid/util/RectL;->getRotatedY(JJJJDD)J

    move-result-wide v14

    .line 164
    .end local v26    # "outputY":J
    .restart local v14    # "outputY":J
    iget-wide v4, v1, Lorg/osmdroid/util/RectL;->top:J

    cmp-long v4, v4, v14

    if-lez v4, :cond_6

    .line 165
    iput-wide v14, v1, Lorg/osmdroid/util/RectL;->top:J

    .line 167
    :cond_6
    iget-wide v4, v1, Lorg/osmdroid/util/RectL;->bottom:J

    cmp-long v4, v4, v14

    if-gez v4, :cond_7

    .line 168
    iput-wide v14, v1, Lorg/osmdroid/util/RectL;->bottom:J

    .line 170
    :cond_7
    iget-wide v4, v1, Lorg/osmdroid/util/RectL;->left:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_8

    .line 171
    iput-wide v2, v1, Lorg/osmdroid/util/RectL;->left:J

    .line 173
    :cond_8
    iget-wide v4, v1, Lorg/osmdroid/util/RectL;->right:J

    cmp-long v4, v4, v2

    if-gez v4, :cond_9

    .line 174
    iput-wide v2, v1, Lorg/osmdroid/util/RectL;->right:J

    .line 176
    :cond_9
    iget-wide v12, v0, Lorg/osmdroid/util/RectL;->left:J

    .line 177
    .end local v22    # "inputX":J
    .restart local v12    # "inputX":J
    iget-wide v10, v0, Lorg/osmdroid/util/RectL;->bottom:J

    .line 178
    .end local v20    # "inputY":J
    .restart local v10    # "inputY":J
    move-wide v4, v12

    move-wide v6, v10

    move-wide/from16 v8, p1

    move-wide/from16 v20, v10

    .end local v10    # "inputY":J
    .restart local v20    # "inputY":J
    move-wide/from16 v10, p3

    move-wide/from16 v22, v12

    .end local v12    # "inputX":J
    .restart local v22    # "inputX":J
    move-wide/from16 v12, v16

    move-wide/from16 v26, v14

    .end local v14    # "outputY":J
    .restart local v26    # "outputY":J
    move-wide/from16 v14, v18

    invoke-static/range {v4 .. v15}, Lorg/osmdroid/util/RectL;->getRotatedX(JJJJDD)J

    move-result-wide v2

    .line 179
    move-wide/from16 v4, v22

    move-wide/from16 v6, v20

    invoke-static/range {v4 .. v15}, Lorg/osmdroid/util/RectL;->getRotatedY(JJJJDD)J

    move-result-wide v4

    .line 180
    .end local v26    # "outputY":J
    .local v4, "outputY":J
    iget-wide v6, v1, Lorg/osmdroid/util/RectL;->top:J

    cmp-long v6, v6, v4

    if-lez v6, :cond_a

    .line 181
    iput-wide v4, v1, Lorg/osmdroid/util/RectL;->top:J

    .line 183
    :cond_a
    iget-wide v6, v1, Lorg/osmdroid/util/RectL;->bottom:J

    cmp-long v6, v6, v4

    if-gez v6, :cond_b

    .line 184
    iput-wide v4, v1, Lorg/osmdroid/util/RectL;->bottom:J

    .line 186
    :cond_b
    iget-wide v6, v1, Lorg/osmdroid/util/RectL;->left:J

    cmp-long v6, v6, v2

    if-lez v6, :cond_c

    .line 187
    iput-wide v2, v1, Lorg/osmdroid/util/RectL;->left:J

    .line 189
    :cond_c
    iget-wide v6, v1, Lorg/osmdroid/util/RectL;->right:J

    cmp-long v6, v6, v2

    if-gez v6, :cond_d

    .line 190
    iput-wide v2, v1, Lorg/osmdroid/util/RectL;->right:J

    .line 192
    :cond_d
    return-object v1
.end method

.method public static getRotatedX(JJDJJ)J
    .locals 15
    .param p0, "pX"    # J
    .param p2, "pY"    # J
    .param p4, "pDegrees"    # D
    .param p6, "pCenterX"    # J
    .param p8, "pCenterY"    # J

    .line 285
    const-wide/16 v0, 0x0

    cmpl-double v0, p4, v0

    if-nez v0, :cond_0

    .line 286
    return-wide p0

    .line 288
    :cond_0
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, p4

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double v13, v0, v2

    .line 289
    .local v13, "radians":D
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    move-wide v1, p0

    move-wide/from16 v3, p2

    move-wide/from16 v5, p6

    move-wide/from16 v7, p8

    invoke-static/range {v1 .. v12}, Lorg/osmdroid/util/RectL;->getRotatedX(JJJJDD)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getRotatedX(JJJJDD)J
    .locals 4
    .param p0, "pX"    # J
    .param p2, "pY"    # J
    .param p4, "pCenterX"    # J
    .param p6, "pCenterY"    # J
    .param p8, "pCos"    # D
    .param p10, "pSin"    # D

    .line 314
    sub-long v0, p0, p4

    long-to-double v0, v0

    mul-double/2addr v0, p8

    sub-long v2, p2, p6

    long-to-double v2, v2

    mul-double/2addr v2, p10

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    add-long/2addr v0, p4

    return-wide v0
.end method

.method public static getRotatedY(JJDJJ)J
    .locals 15
    .param p0, "pX"    # J
    .param p2, "pY"    # J
    .param p4, "pDegrees"    # D
    .param p6, "pCenterX"    # J
    .param p8, "pCenterY"    # J

    .line 299
    const-wide/16 v0, 0x0

    cmpl-double v0, p4, v0

    if-nez v0, :cond_0

    .line 300
    return-wide p2

    .line 302
    :cond_0
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, p4

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double v13, v0, v2

    .line 303
    .local v13, "radians":D
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    move-wide v1, p0

    move-wide/from16 v3, p2

    move-wide/from16 v5, p6

    move-wide/from16 v7, p8

    invoke-static/range {v1 .. v12}, Lorg/osmdroid/util/RectL;->getRotatedY(JJJJDD)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getRotatedY(JJJJDD)J
    .locals 4
    .param p0, "pX"    # J
    .param p2, "pY"    # J
    .param p4, "pCenterX"    # J
    .param p6, "pCenterY"    # J
    .param p8, "pCos"    # D
    .param p10, "pSin"    # D

    .line 325
    sub-long v0, p0, p4

    long-to-double v0, v0

    mul-double/2addr v0, p10

    sub-long v2, p2, p6

    long-to-double v2, v2

    mul-double/2addr v2, p8

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    add-long/2addr v0, p6

    return-wide v0
.end method

.method public static intersects(Lorg/osmdroid/util/RectL;Lorg/osmdroid/util/RectL;)Z
    .locals 4
    .param p0, "a"    # Lorg/osmdroid/util/RectL;
    .param p1, "b"    # Lorg/osmdroid/util/RectL;

    .line 59
    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->left:J

    iget-wide v2, p1, Lorg/osmdroid/util/RectL;->right:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p1, Lorg/osmdroid/util/RectL;->left:J

    iget-wide v2, p0, Lorg/osmdroid/util/RectL;->right:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->top:J

    iget-wide v2, p1, Lorg/osmdroid/util/RectL;->bottom:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p1, Lorg/osmdroid/util/RectL;->top:J

    iget-wide v2, p0, Lorg/osmdroid/util/RectL;->bottom:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public centerX()J
    .locals 4

    .line 368
    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->left:J

    iget-wide v2, p0, Lorg/osmdroid/util/RectL;->right:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public centerY()J
    .locals 4

    .line 375
    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->top:J

    iget-wide v2, p0, Lorg/osmdroid/util/RectL;->bottom:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public contains(JJ)Z
    .locals 9
    .param p1, "x"    # J
    .param p3, "y"    # J

    .line 69
    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->left:J

    iget-wide v2, p0, Lorg/osmdroid/util/RectL;->right:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    iget-wide v4, p0, Lorg/osmdroid/util/RectL;->top:J

    iget-wide v6, p0, Lorg/osmdroid/util/RectL;->bottom:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    cmp-long v0, p3, v4

    if-ltz v0, :cond_0

    cmp-long v0, p3, v6

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 97
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 98
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 100
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/osmdroid/util/RectL;

    .line 101
    .local v2, "r":Lorg/osmdroid/util/RectL;
    iget-wide v3, p0, Lorg/osmdroid/util/RectL;->left:J

    iget-wide v5, v2, Lorg/osmdroid/util/RectL;->left:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Lorg/osmdroid/util/RectL;->top:J

    iget-wide v5, v2, Lorg/osmdroid/util/RectL;->top:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Lorg/osmdroid/util/RectL;->right:J

    iget-wide v5, v2, Lorg/osmdroid/util/RectL;->right:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-wide v3, p0, Lorg/osmdroid/util/RectL;->bottom:J

    iget-wide v5, v2, Lorg/osmdroid/util/RectL;->bottom:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 98
    .end local v2    # "r":Lorg/osmdroid/util/RectL;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 8

    .line 106
    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->left:J

    .line 107
    .local v0, "result":J
    const-wide/16 v2, 0x1f

    mul-long v4, v0, v2

    iget-wide v6, p0, Lorg/osmdroid/util/RectL;->top:J

    add-long/2addr v4, v6

    .line 108
    .end local v0    # "result":J
    .local v4, "result":J
    mul-long v0, v4, v2

    iget-wide v6, p0, Lorg/osmdroid/util/RectL;->right:J

    add-long/2addr v0, v6

    .line 109
    .end local v4    # "result":J
    .restart local v0    # "result":J
    mul-long/2addr v2, v0

    iget-wide v4, p0, Lorg/osmdroid/util/RectL;->bottom:J

    add-long/2addr v2, v4

    .line 110
    .end local v0    # "result":J
    .local v2, "result":J
    const-wide/32 v0, 0x7fffffff

    rem-long v0, v2, v0

    long-to-int v0, v0

    return v0
.end method

.method public final height()J
    .locals 4

    .line 87
    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->bottom:J

    iget-wide v2, p0, Lorg/osmdroid/util/RectL;->top:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public inset(JJ)V
    .locals 2
    .param p1, "dx"    # J
    .param p3, "dy"    # J

    .line 76
    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->left:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/osmdroid/util/RectL;->left:J

    .line 77
    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->top:J

    add-long/2addr v0, p3

    iput-wide v0, p0, Lorg/osmdroid/util/RectL;->top:J

    .line 78
    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->right:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lorg/osmdroid/util/RectL;->right:J

    .line 79
    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->bottom:J

    sub-long/2addr v0, p3

    iput-wide v0, p0, Lorg/osmdroid/util/RectL;->bottom:J

    .line 80
    return-void
.end method

.method public offset(JJ)V
    .locals 2
    .param p1, "pDx"    # J
    .param p3, "pDy"    # J

    .line 332
    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->left:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/osmdroid/util/RectL;->left:J

    .line 333
    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->top:J

    add-long/2addr v0, p3

    iput-wide v0, p0, Lorg/osmdroid/util/RectL;->top:J

    .line 334
    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->right:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/osmdroid/util/RectL;->right:J

    .line 335
    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->bottom:J

    add-long/2addr v0, p3

    iput-wide v0, p0, Lorg/osmdroid/util/RectL;->bottom:J

    .line 336
    return-void
.end method

.method public set(JJJJ)V
    .locals 0
    .param p1, "pLeft"    # J
    .param p3, "pTop"    # J
    .param p5, "pRight"    # J
    .param p7, "pBottom"    # J

    .line 32
    iput-wide p1, p0, Lorg/osmdroid/util/RectL;->left:J

    .line 33
    iput-wide p3, p0, Lorg/osmdroid/util/RectL;->top:J

    .line 34
    iput-wide p5, p0, Lorg/osmdroid/util/RectL;->right:J

    .line 35
    iput-wide p7, p0, Lorg/osmdroid/util/RectL;->bottom:J

    .line 36
    return-void
.end method

.method public set(Lorg/osmdroid/util/RectL;)V
    .locals 2
    .param p1, "pOther"    # Lorg/osmdroid/util/RectL;

    .line 39
    iget-wide v0, p1, Lorg/osmdroid/util/RectL;->left:J

    iput-wide v0, p0, Lorg/osmdroid/util/RectL;->left:J

    .line 40
    iget-wide v0, p1, Lorg/osmdroid/util/RectL;->top:J

    iput-wide v0, p0, Lorg/osmdroid/util/RectL;->top:J

    .line 41
    iget-wide v0, p1, Lorg/osmdroid/util/RectL;->right:J

    iput-wide v0, p0, Lorg/osmdroid/util/RectL;->right:J

    .line 42
    iget-wide v0, p1, Lorg/osmdroid/util/RectL;->bottom:J

    iput-wide v0, p0, Lorg/osmdroid/util/RectL;->bottom:J

    .line 43
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RectL("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/osmdroid/util/RectL;->left:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/osmdroid/util/RectL;->top:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/osmdroid/util/RectL;->right:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/osmdroid/util/RectL;->bottom:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public union(JJ)V
    .locals 2
    .param p1, "x"    # J
    .param p3, "y"    # J

    .line 46
    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->left:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 47
    iput-wide p1, p0, Lorg/osmdroid/util/RectL;->left:J

    goto :goto_0

    .line 48
    :cond_0
    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->right:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 49
    iput-wide p1, p0, Lorg/osmdroid/util/RectL;->right:J

    .line 51
    :cond_1
    :goto_0
    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->top:J

    cmp-long v0, p3, v0

    if-gez v0, :cond_2

    .line 52
    iput-wide p3, p0, Lorg/osmdroid/util/RectL;->top:J

    goto :goto_1

    .line 53
    :cond_2
    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->bottom:J

    cmp-long v0, p3, v0

    if-lez v0, :cond_3

    .line 54
    iput-wide p3, p0, Lorg/osmdroid/util/RectL;->bottom:J

    .line 56
    :cond_3
    :goto_1
    return-void
.end method

.method public union(JJJJ)V
    .locals 16
    .param p1, "pLeft"    # J
    .param p3, "pTop"    # J
    .param p5, "pRight"    # J
    .param p7, "pBottom"    # J

    .line 342
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    cmp-long v9, v1, v5

    if-gez v9, :cond_5

    cmp-long v9, v3, v7

    if-gez v9, :cond_5

    .line 343
    iget-wide v9, v0, Lorg/osmdroid/util/RectL;->left:J

    iget-wide v11, v0, Lorg/osmdroid/util/RectL;->right:J

    cmp-long v13, v9, v11

    if-gez v13, :cond_4

    iget-wide v13, v0, Lorg/osmdroid/util/RectL;->top:J

    iget-wide v7, v0, Lorg/osmdroid/util/RectL;->bottom:J

    cmp-long v15, v13, v7

    if-gez v15, :cond_3

    .line 344
    cmp-long v9, v9, v1

    if-lez v9, :cond_0

    iput-wide v1, v0, Lorg/osmdroid/util/RectL;->left:J

    .line 345
    :cond_0
    cmp-long v9, v13, v3

    if-lez v9, :cond_1

    iput-wide v3, v0, Lorg/osmdroid/util/RectL;->top:J

    .line 346
    :cond_1
    cmp-long v9, v11, v5

    if-gez v9, :cond_2

    iput-wide v5, v0, Lorg/osmdroid/util/RectL;->right:J

    .line 347
    :cond_2
    move-wide v9, v7

    move-wide/from16 v7, p7

    cmp-long v9, v9, v7

    if-gez v9, :cond_5

    iput-wide v7, v0, Lorg/osmdroid/util/RectL;->bottom:J

    goto :goto_0

    .line 343
    :cond_3
    move-wide/from16 v7, p7

    .line 349
    :cond_4
    iput-wide v1, v0, Lorg/osmdroid/util/RectL;->left:J

    .line 350
    iput-wide v3, v0, Lorg/osmdroid/util/RectL;->top:J

    .line 351
    iput-wide v5, v0, Lorg/osmdroid/util/RectL;->right:J

    .line 352
    iput-wide v7, v0, Lorg/osmdroid/util/RectL;->bottom:J

    .line 355
    :cond_5
    :goto_0
    return-void
.end method

.method public union(Lorg/osmdroid/util/RectL;)V
    .locals 9
    .param p1, "pRect"    # Lorg/osmdroid/util/RectL;

    .line 361
    iget-wide v1, p1, Lorg/osmdroid/util/RectL;->left:J

    iget-wide v3, p1, Lorg/osmdroid/util/RectL;->top:J

    iget-wide v5, p1, Lorg/osmdroid/util/RectL;->right:J

    iget-wide v7, p1, Lorg/osmdroid/util/RectL;->bottom:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/osmdroid/util/RectL;->union(JJJJ)V

    .line 362
    return-void
.end method

.method public final width()J
    .locals 4

    .line 83
    iget-wide v0, p0, Lorg/osmdroid/util/RectL;->right:J

    iget-wide v2, p0, Lorg/osmdroid/util/RectL;->left:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
