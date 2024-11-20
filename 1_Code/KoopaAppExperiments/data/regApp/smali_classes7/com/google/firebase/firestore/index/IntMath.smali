.class public final Lcom/google/firebase/firestore/index/IntMath;
.super Ljava/lang/Object;
.source "IntMath.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static divide(IILjava/math/RoundingMode;)I
    .locals 9
    .param p0, "p"    # I
    .param p1, "q"    # I
    .param p2, "mode"    # Ljava/math/RoundingMode;

    .line 49
    if-eqz p1, :cond_a

    .line 52
    div-int v0, p0, p1

    .line 53
    .local v0, "div":I
    mul-int v1, p1, v0

    sub-int v1, p0, v1

    .line 55
    .local v1, "rem":I
    if-nez v1, :cond_0

    .line 56
    return v0

    .line 66
    :cond_0
    xor-int v2, p0, p1

    shr-int/lit8 v2, v2, 0x1f

    const/4 v3, 0x1

    or-int/2addr v2, v3

    .line 68
    .local v2, "signum":I
    sget-object v4, Lcom/google/firebase/firestore/index/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x0

    packed-switch v4, :pswitch_data_0

    .line 97
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 86
    :pswitch_0
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 87
    .local v4, "absRem":I
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    sub-int/2addr v6, v4

    sub-int v6, v4, v6

    .line 90
    .local v6, "cmpRemToHalfDivisor":I
    if-nez v6, :cond_5

    .line 91
    sget-object v7, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    if-eq p2, v7, :cond_4

    sget-object v7, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    if-ne p2, v7, :cond_1

    move v7, v3

    goto :goto_0

    :cond_1
    move v7, v5

    :goto_0
    and-int/lit8 v8, v0, 0x1

    if-eqz v8, :cond_2

    move v8, v3

    goto :goto_1

    :cond_2
    move v8, v5

    :goto_1
    and-int/2addr v7, v8

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    move v3, v5

    .local v3, "increment":Z
    :cond_4
    :goto_2
    goto :goto_6

    .line 93
    .end local v3    # "increment":Z
    :cond_5
    if-lez v6, :cond_6

    goto :goto_3

    :cond_6
    move v3, v5

    .line 95
    .restart local v3    # "increment":Z
    :goto_3
    goto :goto_6

    .line 81
    .end local v3    # "increment":Z
    .end local v4    # "absRem":I
    .end local v6    # "cmpRemToHalfDivisor":I
    :pswitch_1
    if-gez v2, :cond_7

    goto :goto_4

    :cond_7
    move v3, v5

    .line 82
    .restart local v3    # "increment":Z
    :goto_4
    goto :goto_6

    .line 78
    .end local v3    # "increment":Z
    :pswitch_2
    if-lez v2, :cond_8

    goto :goto_5

    :cond_8
    move v3, v5

    .line 79
    .restart local v3    # "increment":Z
    :goto_5
    goto :goto_6

    .line 75
    .end local v3    # "increment":Z
    :pswitch_3
    const/4 v3, 0x1

    .line 76
    .restart local v3    # "increment":Z
    goto :goto_6

    .line 72
    .end local v3    # "increment":Z
    :pswitch_4
    const/4 v3, 0x0

    .line 73
    .restart local v3    # "increment":Z
    nop

    .line 99
    :goto_6
    if-eqz v3, :cond_9

    add-int v4, v0, v2

    goto :goto_7

    :cond_9
    move v4, v0

    :goto_7
    return v4

    .line 50
    .end local v0    # "div":I
    .end local v1    # "rem":I
    .end local v2    # "signum":I
    .end local v3    # "increment":Z
    :cond_a
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "/ by zero"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
