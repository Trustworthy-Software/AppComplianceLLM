.class Lcom/caverock/androidsvg/NumberParser;
.super Ljava/lang/Object;
.source "NumberParser.java"


# static fields
.field private static final negativePowersOf10:[F

.field private static final positivePowersOf10:[F


# instance fields
.field private pos:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 258
    const/16 v0, 0x27

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/caverock/androidsvg/NumberParser;->positivePowersOf10:[F

    .line 264
    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/caverock/androidsvg/NumberParser;->negativePowersOf10:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x41200000    # 10.0f
        0x42c80000    # 100.0f
        0x447a0000    # 1000.0f
        0x461c4000    # 10000.0f
        0x47c35000    # 100000.0f
        0x49742400    # 1000000.0f
        0x4b189680    # 1.0E7f
        0x4cbebc20    # 1.0E8f
        0x4e6e6b28    # 1.0E9f
        0x501502f9    # 1.0E10f
        0x51ba43b7    # 9.9999998E10f
        0x5368d4a5    # 1.0E12f
        0x551184e7    # 9.9999998E12f
        0x56b5e621    # 1.0E14f
        0x58635fa9    # 9.9999999E14f
        0x5a0e1bca    # 1.00000003E16f
        0x5bb1a2bc    # 9.9999998E16f
        0x5d5e0b6b    # 9.9999998E17f
        0x5f0ac723    # 1.0E19f
        0x60ad78ec    # 1.0E20f
        0x6258d727    # 1.0E21f
        0x64078678    # 1.0E22f
        0x65a96816    # 1.0E23f
        0x6753c21c    # 1.0E24f
        0x69045951    # 1.0E25f
        0x6aa56fa6    # 1.0E26f
        0x6c4ecb8f    # 1.0E27f
        0x6e013f39    # 1.0E28f
        0x6fa18f08    # 1.0E29f
        0x7149f2ca    # 1.0E30f
        0x72fc6f7c    # 1.0E31f
        0x749dc5ae    # 1.0E32f
        0x76453719    # 1.0E33f
        0x77f684df    # 1.0E34f
        0x799a130c    # 1.0E35f
        0x7b4097ce    # 1.0E36f
        0x7cf0bdc2    # 1.0E37f
        0x7e967699    # 1.0E38f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3dcccccd    # 0.1f
        0x3c23d70a    # 0.01f
        0x3a83126f    # 0.001f
        0x38d1b717    # 1.0E-4f
        0x3727c5ac    # 1.0E-5f
        0x358637bd    # 1.0E-6f
        0x33d6bf95    # 1.0E-7f
        0x322bcc77    # 1.0E-8f
        0x3089705f    # 1.0E-9f
        0x2edbe6ff    # 1.0E-10f
        0x2d2febff    # 1.0E-11f
        0x2b8cbccc    # 1.0E-12f
        0x29e12e13    # 1.0E-13f
        0x283424dc    # 1.0E-14f
        0x26901d7d    # 1.0E-15f
        0x24e69595    # 1.0E-16f
        0x233877aa    # 1.0E-17f
        0x219392ef    # 1.0E-18f
        0x1fec1e4a    # 1.0E-19f
        0x1e3ce508    # 1.0E-20f
        0x1c971da0    # 1.0E-21f
        0x1af1c901    # 1.0E-22f
        0x19416d9a    # 1.0E-23f
        0x179abe15    # 1.0E-24f
        0x15f79688    # 1.0E-25f
        0x14461206    # 1.0E-26f
        0x129e74d2    # 1.0E-27f
        0x10fd87b6    # 1.0E-28f
        0xf4ad2f8    # 1.0E-29f
        0xda24260    # 1.0E-30f
        0xc01ceb3    # 1.0E-31f
        0xa4fb11f    # 1.0E-32f
        0x8a6274c    # 1.0E-33f
        0x704ec3d    # 1.0E-34f
        0x554ad2e    # 1.0E-35f
        0x3aa2425    # 1.0E-36f
        0x2081cea    # 1.0E-37f
        0x6ce3ee    # 1.0E-38f
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getEndPos()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    return v0
.end method

.method parseNumber(Ljava/lang/String;II)F
    .locals 27
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "startpos"    # I
    .param p3, "len"    # I

    .line 54
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x0

    .line 55
    .local v4, "isNegative":Z
    const-wide/16 v5, 0x0

    .line 56
    .local v5, "significand":J
    const/4 v7, 0x0

    .line 57
    .local v7, "numDigits":I
    const/4 v8, 0x0

    .line 58
    .local v8, "numLeadingZeroes":I
    const/4 v9, 0x0

    .line 59
    .local v9, "numTrailingZeroes":I
    const/4 v10, 0x0

    .line 61
    .local v10, "decimalSeen":Z
    const/4 v11, 0x0

    .line 64
    .local v11, "decimalPos":I
    const-wide v12, 0xcccccccccccccccL

    .line 66
    .local v12, "TOO_BIG":J
    iput v2, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    .line 68
    const/high16 v14, 0x7fc00000    # Float.NaN

    if-lt v2, v3, :cond_0

    .line 69
    return v14

    .line 71
    :cond_0
    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->charAt(I)C

    move-result v15

    .line 72
    .local v15, "ch":C
    packed-switch v15, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 73
    :pswitch_1
    const/4 v4, 0x1

    .line 75
    :pswitch_2
    iget v14, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    .line 78
    :goto_0
    iget v14, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    .line 80
    .local v14, "sigStart":I
    :goto_1
    iget v2, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    const-wide/16 v17, 0x0

    move/from16 v19, v15

    .end local v15    # "ch":C
    .local v19, "ch":C
    const/16 v15, 0x30

    if-ge v2, v3, :cond_a

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 83
    .end local v19    # "ch":C
    .local v2, "ch":C
    if-ne v2, v15, :cond_2

    .line 85
    if-nez v7, :cond_1

    .line 86
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 89
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 92
    :cond_2
    const/16 v15, 0x31

    if-lt v2, v15, :cond_7

    const/16 v15, 0x39

    if-gt v2, v15, :cond_7

    .line 95
    add-int/2addr v7, v9

    .line 96
    :goto_2
    const-wide/16 v19, 0xa

    if-lez v9, :cond_4

    .line 97
    cmp-long v15, v5, v12

    if-lez v15, :cond_3

    .line 99
    const/high16 v15, 0x7fc00000    # Float.NaN

    return v15

    .line 101
    :cond_3
    const/high16 v15, 0x7fc00000    # Float.NaN

    mul-long v5, v5, v19

    .line 102
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 105
    :cond_4
    const/high16 v15, 0x7fc00000    # Float.NaN

    cmp-long v16, v5, v12

    if-lez v16, :cond_5

    .line 108
    return v15

    .line 110
    :cond_5
    mul-long v19, v19, v5

    add-int/lit8 v15, v2, -0x30

    move-wide/from16 v21, v5

    .end local v5    # "significand":J
    .local v21, "significand":J
    int-to-long v5, v15

    add-long v19, v19, v5

    .line 111
    .end local v21    # "significand":J
    .local v19, "significand":J
    add-int/lit8 v7, v7, 0x1

    .line 113
    cmp-long v5, v19, v17

    if-gez v5, :cond_6

    .line 114
    const/high16 v5, 0x7fc00000    # Float.NaN

    return v5

    .line 113
    :cond_6
    move-wide/from16 v5, v19

    goto :goto_3

    .line 116
    .end local v19    # "significand":J
    .restart local v5    # "significand":J
    :cond_7
    const/16 v15, 0x2e

    if-ne v2, v15, :cond_9

    .line 118
    if-eqz v10, :cond_8

    .line 120
    goto :goto_4

    .line 122
    :cond_8
    iget v15, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    sub-int/2addr v15, v14

    .line 123
    .end local v11    # "decimalPos":I
    .local v15, "decimalPos":I
    const/4 v10, 0x1

    move v11, v15

    .line 127
    .end local v15    # "decimalPos":I
    .restart local v11    # "decimalPos":I
    :goto_3
    iget v15, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    add-int/lit8 v15, v15, 0x1

    iput v15, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move v15, v2

    move/from16 v2, p2

    goto :goto_1

    .line 130
    :cond_9
    :goto_4
    move v15, v2

    goto :goto_5

    .line 80
    .end local v2    # "ch":C
    .local v19, "ch":C
    :cond_a
    move/from16 v15, v19

    .line 130
    .end local v19    # "ch":C
    .local v15, "ch":C
    :goto_5
    if-eqz v10, :cond_c

    iget v2, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v19, v14

    .end local v14    # "sigStart":I
    .local v19, "sigStart":I
    add-int/lit8 v14, v11, 0x1

    if-ne v2, v14, :cond_b

    .line 133
    const/high16 v2, 0x7fc00000    # Float.NaN

    return v2

    .line 130
    :cond_b
    const/high16 v2, 0x7fc00000    # Float.NaN

    goto :goto_6

    .end local v19    # "sigStart":I
    .restart local v14    # "sigStart":I
    :cond_c
    move/from16 v19, v14

    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 137
    .end local v14    # "sigStart":I
    .restart local v19    # "sigStart":I
    :goto_6
    if-nez v7, :cond_e

    .line 138
    if-nez v8, :cond_d

    .line 140
    return v2

    .line 144
    :cond_d
    const/4 v7, 0x1

    .line 147
    :cond_e
    if-eqz v10, :cond_f

    .line 148
    sub-int v2, v11, v8

    sub-int/2addr v2, v7

    .local v2, "exponent":I
    goto :goto_7

    .line 150
    .end local v2    # "exponent":I
    :cond_f
    move v2, v9

    .line 154
    .restart local v2    # "exponent":I
    :goto_7
    iget v14, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    if-ge v14, v3, :cond_19

    .line 156
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v15

    .line 157
    const/16 v14, 0x45

    if-eq v15, v14, :cond_11

    const/16 v14, 0x65

    if-ne v15, v14, :cond_10

    goto :goto_8

    :cond_10
    move/from16 v24, v8

    move/from16 v25, v9

    move/from16 v26, v10

    move/from16 v20, v11

    goto/16 :goto_c

    .line 159
    :cond_11
    :goto_8
    const/4 v14, 0x0

    .line 160
    .local v14, "expIsNegative":Z
    const/16 v22, 0x0

    .line 161
    .local v22, "expVal":I
    const/16 v23, 0x0

    .line 163
    .local v23, "abortExponent":Z
    move/from16 v24, v8

    .end local v8    # "numLeadingZeroes":I
    .local v24, "numLeadingZeroes":I
    iget v8, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    .line 164
    if-ne v8, v3, :cond_12

    .line 167
    const/high16 v8, 0x7fc00000    # Float.NaN

    return v8

    .line 170
    :cond_12
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    packed-switch v8, :pswitch_data_1

    .line 181
    :pswitch_3
    const/16 v23, 0x1

    .line 182
    iget v8, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    goto :goto_9

    .line 177
    :pswitch_4
    goto :goto_9

    .line 171
    :pswitch_5
    const/4 v14, 0x1

    .line 173
    :pswitch_6
    iget v8, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    .line 174
    nop

    .line 185
    :goto_9
    if-nez v23, :cond_18

    .line 187
    iget v8, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v25, v9

    move/from16 v9, v22

    .line 189
    .end local v22    # "expVal":I
    .local v8, "expStart":I
    .local v9, "expVal":I
    .local v25, "numTrailingZeroes":I
    :goto_a
    move/from16 v26, v10

    .end local v10    # "decimalSeen":Z
    .local v26, "decimalSeen":Z
    iget v10, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    if-ge v10, v3, :cond_15

    .line 191
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v15

    .line 192
    const/16 v10, 0x30

    if-lt v15, v10, :cond_14

    const/16 v10, 0x39

    if-gt v15, v10, :cond_14

    .line 194
    move/from16 v20, v11

    .end local v11    # "decimalPos":I
    .local v20, "decimalPos":I
    int-to-long v10, v9

    cmp-long v10, v10, v12

    if-lez v10, :cond_13

    .line 197
    const/high16 v10, 0x7fc00000    # Float.NaN

    return v10

    .line 199
    :cond_13
    mul-int/lit8 v10, v9, 0xa

    add-int/lit8 v11, v15, -0x30

    add-int v9, v10, v11

    .line 200
    iget v10, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v11, v20

    move/from16 v10, v26

    goto :goto_a

    .line 192
    .end local v20    # "decimalPos":I
    .restart local v11    # "decimalPos":I
    :cond_14
    move/from16 v20, v11

    .end local v11    # "decimalPos":I
    .restart local v20    # "decimalPos":I
    goto :goto_b

    .line 189
    .end local v20    # "decimalPos":I
    .restart local v11    # "decimalPos":I
    :cond_15
    move/from16 v20, v11

    .line 207
    .end local v11    # "decimalPos":I
    .restart local v20    # "decimalPos":I
    :goto_b
    iget v10, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    if-ne v10, v8, :cond_16

    .line 209
    const/high16 v10, 0x7fc00000    # Float.NaN

    return v10

    .line 212
    :cond_16
    if-eqz v14, :cond_17

    .line 213
    sub-int/2addr v2, v9

    goto :goto_c

    .line 215
    :cond_17
    add-int/2addr v2, v9

    goto :goto_c

    .line 185
    .end local v8    # "expStart":I
    .end local v20    # "decimalPos":I
    .end local v25    # "numTrailingZeroes":I
    .end local v26    # "decimalSeen":Z
    .local v9, "numTrailingZeroes":I
    .restart local v10    # "decimalSeen":Z
    .restart local v11    # "decimalPos":I
    .restart local v22    # "expVal":I
    :cond_18
    move/from16 v25, v9

    move/from16 v26, v10

    move/from16 v20, v11

    .end local v9    # "numTrailingZeroes":I
    .end local v10    # "decimalSeen":Z
    .end local v11    # "decimalPos":I
    .restart local v20    # "decimalPos":I
    .restart local v25    # "numTrailingZeroes":I
    .restart local v26    # "decimalSeen":Z
    goto :goto_c

    .line 154
    .end local v14    # "expIsNegative":Z
    .end local v20    # "decimalPos":I
    .end local v22    # "expVal":I
    .end local v23    # "abortExponent":Z
    .end local v24    # "numLeadingZeroes":I
    .end local v25    # "numTrailingZeroes":I
    .end local v26    # "decimalSeen":Z
    .local v8, "numLeadingZeroes":I
    .restart local v9    # "numTrailingZeroes":I
    .restart local v10    # "decimalSeen":Z
    .restart local v11    # "decimalPos":I
    :cond_19
    move/from16 v24, v8

    move/from16 v25, v9

    move/from16 v26, v10

    move/from16 v20, v11

    .line 227
    .end local v8    # "numLeadingZeroes":I
    .end local v9    # "numTrailingZeroes":I
    .end local v10    # "decimalSeen":Z
    .end local v11    # "decimalPos":I
    .restart local v20    # "decimalPos":I
    .restart local v24    # "numLeadingZeroes":I
    .restart local v25    # "numTrailingZeroes":I
    .restart local v26    # "decimalSeen":Z
    :goto_c
    add-int v8, v2, v7

    const/16 v9, 0x27

    if-gt v8, v9, :cond_1f

    add-int v8, v2, v7

    const/16 v9, -0x2c

    if-ge v8, v9, :cond_1a

    goto :goto_f

    .line 230
    :cond_1a
    long-to-float v8, v5

    .line 232
    .local v8, "f":F
    cmp-long v9, v5, v17

    if-eqz v9, :cond_1d

    .line 235
    if-lez v2, :cond_1b

    .line 237
    sget-object v9, Lcom/caverock/androidsvg/NumberParser;->positivePowersOf10:[F

    aget v9, v9, v2

    mul-float/2addr v8, v9

    goto :goto_d

    .line 239
    :cond_1b
    if-gez v2, :cond_1d

    .line 244
    const/16 v9, -0x26

    if-ge v2, v9, :cond_1c

    .line 246
    float-to-double v9, v8

    const-wide v16, 0x3bc79ca10c924223L    # 1.0E-20

    mul-double v9, v9, v16

    double-to-float v8, v9

    .line 247
    add-int/lit8 v2, v2, 0x14

    .line 250
    :cond_1c
    sget-object v9, Lcom/caverock/androidsvg/NumberParser;->negativePowersOf10:[F

    neg-int v10, v2

    aget v9, v9, v10

    mul-float/2addr v8, v9

    .line 254
    :cond_1d
    :goto_d
    if-eqz v4, :cond_1e

    neg-float v9, v8

    goto :goto_e

    :cond_1e
    move v9, v8

    :goto_e
    return v9

    .line 228
    .end local v8    # "f":F
    :cond_1f
    :goto_f
    const/high16 v8, 0x7fc00000    # Float.NaN

    return v8

    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2b
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
