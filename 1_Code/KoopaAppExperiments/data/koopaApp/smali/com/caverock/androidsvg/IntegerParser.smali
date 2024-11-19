.class Lcom/caverock/androidsvg/IntegerParser;
.super Ljava/lang/Object;
.source "IntegerParser.java"


# instance fields
.field private pos:I

.field private value:J


# direct methods
.method constructor <init>(JI)V
    .locals 0
    .param p1, "value"    # J
    .param p3, "pos"    # I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide p1, p0, Lcom/caverock/androidsvg/IntegerParser;->value:J

    .line 35
    iput p3, p0, Lcom/caverock/androidsvg/IntegerParser;->pos:I

    .line 36
    return-void
.end method

.method static parseHex(Ljava/lang/String;II)Lcom/caverock/androidsvg/IntegerParser;
    .locals 12
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "startpos"    # I
    .param p2, "len"    # I

    .line 117
    move v0, p1

    .line 118
    .local v0, "pos":I
    const-wide/16 v1, 0x0

    .line 122
    .local v1, "value":J
    const/4 v3, 0x0

    if-lt v0, p2, :cond_0

    .line 123
    return-object v3

    .line 125
    :cond_0
    :goto_0
    if-ge v0, p2, :cond_4

    .line 127
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 128
    .local v4, "ch":C
    const/16 v5, 0x30

    const-wide/16 v6, 0x10

    if-lt v4, v5, :cond_1

    const/16 v5, 0x39

    if-gt v4, v5, :cond_1

    .line 130
    mul-long/2addr v6, v1

    add-int/lit8 v5, v4, -0x30

    int-to-long v8, v5

    add-long/2addr v6, v8

    move-wide v1, v6

    .end local v1    # "value":J
    .local v6, "value":J
    goto :goto_1

    .line 132
    .end local v6    # "value":J
    .restart local v1    # "value":J
    :cond_1
    const-wide/16 v8, 0xa

    const/16 v5, 0x41

    if-lt v4, v5, :cond_2

    const/16 v5, 0x46

    if-gt v4, v5, :cond_2

    .line 134
    mul-long/2addr v6, v1

    add-int/lit8 v5, v4, -0x41

    int-to-long v10, v5

    add-long/2addr v6, v10

    add-long/2addr v6, v8

    move-wide v1, v6

    .end local v1    # "value":J
    .restart local v6    # "value":J
    goto :goto_1

    .line 136
    .end local v6    # "value":J
    .restart local v1    # "value":J
    :cond_2
    const/16 v5, 0x61

    if-lt v4, v5, :cond_4

    const/16 v5, 0x66

    if-gt v4, v5, :cond_4

    .line 138
    mul-long/2addr v6, v1

    add-int/lit8 v5, v4, -0x61

    int-to-long v10, v5

    add-long/2addr v6, v10

    add-long/2addr v6, v8

    move-wide v1, v6

    .line 143
    :goto_1
    const-wide v5, 0xffffffffL

    cmp-long v5, v1, v5

    if-lez v5, :cond_3

    .line 144
    return-object v3

    .line 146
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    .end local v4    # "ch":C
    :cond_4
    if-ne v0, p1, :cond_5

    .line 151
    return-object v3

    .line 154
    :cond_5
    new-instance v3, Lcom/caverock/androidsvg/IntegerParser;

    invoke-direct {v3, v1, v2, v0}, Lcom/caverock/androidsvg/IntegerParser;-><init>(JI)V

    return-object v3
.end method

.method static parseInt(Ljava/lang/String;IIZ)Lcom/caverock/androidsvg/IntegerParser;
    .locals 11
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "startpos"    # I
    .param p2, "len"    # I
    .param p3, "includeSign"    # Z

    .line 54
    move v0, p1

    .line 55
    .local v0, "pos":I
    const/4 v1, 0x0

    .line 56
    .local v1, "isNegative":Z
    const-wide/16 v2, 0x0

    .line 59
    .local v2, "value":J
    const/4 v4, 0x0

    if-lt v0, p2, :cond_0

    .line 60
    return-object v4

    .line 62
    :cond_0
    if-eqz p3, :cond_1

    .line 64
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 65
    .local v5, "ch":C
    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 66
    :pswitch_1
    const/4 v1, 0x1

    .line 68
    :pswitch_2
    add-int/lit8 v0, v0, 0x1

    .line 71
    .end local v5    # "ch":C
    :cond_1
    :goto_0
    move v5, v0

    .line 73
    .local v5, "sigStart":I
    :goto_1
    if-ge v0, p2, :cond_5

    .line 75
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 76
    .local v6, "ch":C
    const/16 v7, 0x30

    if-lt v6, v7, :cond_5

    const/16 v7, 0x39

    if-gt v6, v7, :cond_5

    .line 78
    const-wide/16 v7, 0xa

    if-eqz v1, :cond_3

    .line 79
    mul-long/2addr v7, v2

    add-int/lit8 v9, v6, -0x30

    int-to-long v9, v9

    sub-long/2addr v7, v9

    .line 80
    .end local v2    # "value":J
    .local v7, "value":J
    const-wide/32 v2, -0x80000000

    cmp-long v2, v7, v2

    if-gez v2, :cond_2

    .line 81
    return-object v4

    .line 80
    :cond_2
    move-wide v2, v7

    goto :goto_2

    .line 83
    .end local v7    # "value":J
    .restart local v2    # "value":J
    :cond_3
    mul-long/2addr v7, v2

    add-int/lit8 v9, v6, -0x30

    int-to-long v9, v9

    add-long/2addr v7, v9

    .line 84
    .end local v2    # "value":J
    .restart local v7    # "value":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v7, v2

    if-lez v2, :cond_4

    .line 85
    return-object v4

    .line 84
    :cond_4
    move-wide v2, v7

    .line 90
    .end local v7    # "value":J
    .restart local v2    # "value":J
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 94
    .end local v6    # "ch":C
    :cond_5
    if-ne v0, v5, :cond_6

    .line 95
    return-object v4

    .line 98
    :cond_6
    new-instance v4, Lcom/caverock/androidsvg/IntegerParser;

    invoke-direct {v4, v2, v3, v0}, Lcom/caverock/androidsvg/IntegerParser;-><init>(JI)V

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method getEndPos()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/caverock/androidsvg/IntegerParser;->pos:I

    return v0
.end method

.method public value()I
    .locals 2

    .line 107
    iget-wide v0, p0, Lcom/caverock/androidsvg/IntegerParser;->value:J

    long-to-int v0, v0

    return v0
.end method
