.class final Lcom/google/android/gms/internal/firebase-auth-api/zzaw;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzat;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzat<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzat<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient zzb:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private final transient zzc:[Ljava/lang/Object;

.field private final transient zzd:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 178
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaw;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaw;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;I)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 179
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzat;-><init>()V

    .line 180
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaw;->zzb:Ljava/lang/Object;

    .line 181
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaw;->zzc:[Ljava/lang/Object;

    .line 182
    iput p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaw;->zzd:I

    .line 183
    return-void
.end method

.method static zza(I[Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/zzas;)Lcom/google/android/gms/internal/firebase-auth-api/zzaw;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/lang/Object;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzas<",
            "TK;TV;>;)",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaw<",
            "TK;TV;>;"
        }
    .end annotation

    .line 6
    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v0, :cond_0

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzat;

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaw;

    .line 8
    return-object v0

    .line 9
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    .line 10
    aget-object v0, v1, v4

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v2, v1, v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzai;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaw;

    invoke-direct {v0, v3, v1, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzaw;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object v0

    .line 14
    :cond_1
    array-length v6, v1

    shr-int/2addr v6, v5

    invoke-static {v0, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzy;->zzb(II)I

    .line 15
    nop

    .line 16
    const/4 v6, 0x2

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 17
    const v8, 0x2ccccccc

    if-ge v7, v8, :cond_3

    .line 18
    add-int/lit8 v8, v7, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v8

    shl-int/2addr v8, v5

    .line 19
    :goto_0
    int-to-double v9, v8

    const-wide v11, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v9, v11

    int-to-double v11, v7

    cmpg-double v9, v9, v11

    if-gez v9, :cond_2

    .line 20
    shl-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 21
    :cond_2
    goto :goto_2

    .line 22
    :cond_3
    const/high16 v8, 0x40000000    # 2.0f

    if-ge v7, v8, :cond_4

    move v7, v5

    goto :goto_1

    :cond_4
    move v7, v4

    .line 23
    :goto_1
    if-eqz v7, :cond_19

    .line 25
    nop

    .line 26
    :goto_2
    nop

    .line 27
    nop

    .line 28
    if-ne v0, v5, :cond_5

    .line 29
    aget-object v7, v1, v4

    .line 30
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v8, v1, v5

    .line 31
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzai;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 33
    goto/16 :goto_c

    .line 34
    :cond_5
    add-int/lit8 v7, v8, -0x1

    .line 35
    nop

    .line 36
    const/16 v9, 0x80

    const/4 v10, -0x1

    if-gt v8, v9, :cond_b

    .line 37
    new-array v8, v8, [B

    .line 38
    invoke-static {v8, v10}, Ljava/util/Arrays;->fill([BB)V

    .line 39
    nop

    .line 40
    move v9, v4

    move v10, v9

    :goto_3
    if-ge v9, v0, :cond_9

    .line 41
    mul-int/lit8 v11, v9, 0x2

    .line 42
    mul-int/lit8 v12, v10, 0x2

    .line 43
    aget-object v13, v1, v11

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    xor-int/2addr v11, v5

    aget-object v11, v1, v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    invoke-static {v13, v11}, Lcom/google/android/gms/internal/firebase-auth-api/zzai;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    move-result v14

    invoke-static {v14}, Lcom/google/android/gms/internal/firebase-auth-api/zzal;->zza(I)I

    move-result v14

    .line 47
    :goto_4
    and-int/2addr v14, v7

    .line 48
    aget-byte v15, v8, v14

    const/16 v4, 0xff

    and-int/2addr v15, v4

    .line 49
    if-ne v15, v4, :cond_7

    .line 50
    int-to-byte v4, v12

    aput-byte v4, v8, v14

    .line 51
    nop

    .line 58
    if-ge v10, v9, :cond_6

    .line 59
    aput-object v13, v1, v12

    .line 60
    xor-int/lit8 v4, v12, 0x1

    aput-object v11, v1, v4

    .line 61
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 52
    :cond_7
    aget-object v4, v1, v15

    invoke-virtual {v13, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 53
    new-instance v3, Lcom/google/android/gms/internal/firebase-auth-api/zzav;

    xor-int/lit8 v4, v15, 0x1

    aget-object v12, v1, v4

    .line 54
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v13, v11, v12}, Lcom/google/android/gms/internal/firebase-auth-api/zzav;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    aput-object v11, v1, v4

    .line 56
    nop

    .line 62
    :goto_5
    add-int/lit8 v9, v9, 0x1

    const/4 v4, 0x0

    goto :goto_3

    .line 57
    :cond_8
    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x0

    goto :goto_4

    .line 63
    :cond_9
    if-ne v10, v0, :cond_a

    move-object v3, v8

    goto/16 :goto_c

    :cond_a
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v8, v4, v3}, [Ljava/lang/Object;

    move-result-object v3

    goto/16 :goto_c

    .line 64
    :cond_b
    const v4, 0x8000

    if-gt v8, v4, :cond_11

    .line 65
    new-array v4, v8, [S

    .line 66
    invoke-static {v4, v10}, Ljava/util/Arrays;->fill([SS)V

    .line 67
    nop

    .line 68
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_6
    if-ge v8, v0, :cond_f

    .line 69
    mul-int/lit8 v10, v8, 0x2

    .line 70
    mul-int/lit8 v11, v9, 0x2

    .line 71
    aget-object v12, v1, v10

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    xor-int/2addr v10, v5

    aget-object v10, v1, v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    invoke-static {v12, v10}, Lcom/google/android/gms/internal/firebase-auth-api/zzai;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v13

    invoke-static {v13}, Lcom/google/android/gms/internal/firebase-auth-api/zzal;->zza(I)I

    move-result v13

    .line 75
    :goto_7
    and-int/2addr v13, v7

    .line 76
    aget-short v14, v4, v13

    const v15, 0xffff

    and-int/2addr v14, v15

    .line 77
    if-ne v14, v15, :cond_d

    .line 78
    int-to-short v14, v11

    aput-short v14, v4, v13

    .line 79
    nop

    .line 86
    if-ge v9, v8, :cond_c

    .line 87
    aput-object v12, v1, v11

    .line 88
    xor-int/lit8 v11, v11, 0x1

    aput-object v10, v1, v11

    .line 89
    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 80
    :cond_d
    aget-object v15, v1, v14

    invoke-virtual {v12, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 81
    new-instance v3, Lcom/google/android/gms/internal/firebase-auth-api/zzav;

    xor-int/lit8 v11, v14, 0x1

    aget-object v13, v1, v11

    .line 82
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v12, v10, v13}, Lcom/google/android/gms/internal/firebase-auth-api/zzav;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    aput-object v10, v1, v11

    .line 84
    nop

    .line 90
    :goto_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 85
    :cond_e
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 91
    :cond_f
    if-ne v9, v0, :cond_10

    move-object v3, v4

    goto :goto_c

    :cond_10
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v4, v7, v3}, [Ljava/lang/Object;

    move-result-object v3

    goto :goto_c

    .line 92
    :cond_11
    new-array v4, v8, [I

    .line 93
    invoke-static {v4, v10}, Ljava/util/Arrays;->fill([II)V

    .line 94
    nop

    .line 95
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_9
    if-ge v8, v0, :cond_15

    .line 96
    mul-int/lit8 v11, v8, 0x2

    .line 97
    mul-int/lit8 v12, v9, 0x2

    .line 98
    aget-object v13, v1, v11

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    xor-int/2addr v11, v5

    aget-object v11, v1, v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    invoke-static {v13, v11}, Lcom/google/android/gms/internal/firebase-auth-api/zzai;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 101
    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    move-result v14

    invoke-static {v14}, Lcom/google/android/gms/internal/firebase-auth-api/zzal;->zza(I)I

    move-result v14

    .line 102
    :goto_a
    and-int/2addr v14, v7

    .line 103
    aget v15, v4, v14

    .line 104
    if-ne v15, v10, :cond_13

    .line 105
    aput v12, v4, v14

    .line 106
    nop

    .line 113
    if-ge v9, v8, :cond_12

    .line 114
    aput-object v13, v1, v12

    .line 115
    xor-int/lit8 v12, v12, 0x1

    aput-object v11, v1, v12

    .line 116
    :cond_12
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 107
    :cond_13
    aget-object v10, v1, v15

    invoke-virtual {v13, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 108
    new-instance v3, Lcom/google/android/gms/internal/firebase-auth-api/zzav;

    xor-int/lit8 v10, v15, 0x1

    aget-object v12, v1, v10

    .line 109
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v13, v11, v12}, Lcom/google/android/gms/internal/firebase-auth-api/zzav;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    aput-object v11, v1, v10

    .line 111
    nop

    .line 117
    :goto_b
    add-int/lit8 v8, v8, 0x1

    const/4 v10, -0x1

    goto :goto_9

    .line 112
    :cond_14
    add-int/lit8 v14, v14, 0x1

    const/4 v10, -0x1

    goto :goto_a

    .line 118
    :cond_15
    if-ne v9, v0, :cond_16

    move-object v3, v4

    goto :goto_c

    :cond_16
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v4, v7, v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 119
    :goto_c
    nop

    .line 120
    instance-of v4, v3, [Ljava/lang/Object;

    if-eqz v4, :cond_18

    .line 121
    check-cast v3, [Ljava/lang/Object;

    .line 122
    aget-object v0, v3, v6

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzav;

    .line 123
    if-eqz v2, :cond_17

    .line 125
    iput-object v0, v2, Lcom/google/android/gms/internal/firebase-auth-api/zzas;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzav;

    .line 126
    const/4 v0, 0x0

    aget-object v0, v3, v0

    .line 127
    aget-object v2, v3, v5

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 128
    shl-int/lit8 v3, v2, 0x1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    .line 129
    move-object v3, v0

    move v0, v2

    goto :goto_d

    .line 124
    :cond_17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzav;->zza()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 130
    :cond_18
    nop

    .line 131
    :goto_d
    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzaw;

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaw;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object v2

    .line 24
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "collection too large"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaw;->zzb:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaw;->zzc:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaw;->zzd:I

    .line 133
    const/4 v3, 0x0

    if-nez p1, :cond_0

    .line 134
    move-object p1, v3

    goto/16 :goto_3

    .line 135
    :cond_0
    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 136
    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 137
    aget-object p1, v1, v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_3

    .line 138
    :cond_1
    nop

    .line 139
    move-object p1, v3

    goto/16 :goto_3

    .line 140
    :cond_2
    if-nez v0, :cond_3

    .line 141
    move-object p1, v3

    goto/16 :goto_3

    .line 142
    :cond_3
    instance-of v2, v0, [B

    if-eqz v2, :cond_6

    .line 143
    move-object v2, v0

    check-cast v2, [B

    .line 144
    array-length v0, v2

    add-int/lit8 v5, v0, -0x1

    .line 145
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzal;->zza(I)I

    move-result v0

    .line 146
    :goto_0
    and-int/2addr v0, v5

    .line 147
    aget-byte v6, v2, v0

    const/16 v7, 0xff

    and-int/2addr v6, v7

    .line 148
    if-ne v6, v7, :cond_4

    .line 149
    move-object p1, v3

    goto :goto_3

    .line 150
    :cond_4
    aget-object v7, v1, v6

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 151
    xor-int/lit8 p1, v6, 0x1

    aget-object p1, v1, p1

    goto :goto_3

    .line 152
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_6
    instance-of v2, v0, [S

    if-eqz v2, :cond_9

    .line 154
    move-object v2, v0

    check-cast v2, [S

    .line 155
    array-length v0, v2

    add-int/lit8 v5, v0, -0x1

    .line 156
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzal;->zza(I)I

    move-result v0

    .line 157
    :goto_1
    and-int/2addr v0, v5

    .line 158
    aget-short v6, v2, v0

    const v7, 0xffff

    and-int/2addr v6, v7

    .line 159
    if-ne v6, v7, :cond_7

    .line 160
    move-object p1, v3

    goto :goto_3

    .line 161
    :cond_7
    aget-object v7, v1, v6

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 162
    xor-int/lit8 p1, v6, 0x1

    aget-object p1, v1, p1

    goto :goto_3

    .line 163
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 164
    :cond_9
    check-cast v0, [I

    .line 165
    array-length v2, v0

    sub-int/2addr v2, v4

    .line 166
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzal;->zza(I)I

    move-result v5

    .line 167
    :goto_2
    and-int/2addr v5, v2

    .line 168
    aget v6, v0, v5

    .line 169
    const/4 v7, -0x1

    if-ne v6, v7, :cond_a

    .line 170
    move-object p1, v3

    goto :goto_3

    .line 171
    :cond_a
    aget-object v7, v1, v6

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 172
    xor-int/lit8 p1, v6, 0x1

    aget-object p1, v1, p1

    .line 174
    :goto_3
    nop

    .line 175
    if-nez p1, :cond_b

    .line 176
    return-object v3

    .line 177
    :cond_b
    return-object p1

    .line 173
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method public final size()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaw;->zzd:I

    return v0
.end method

.method final zza()Lcom/google/android/gms/internal/firebase-auth-api/zzak;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzak<",
            "TV;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzba;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaw;->zzc:[Ljava/lang/Object;

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaw;->zzd:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzba;-><init>([Ljava/lang/Object;II)V

    return-object v0
.end method

.method final zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzau;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzau<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaz;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaw;->zzc:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaw;->zzd:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaz;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzat;[Ljava/lang/Object;II)V

    return-object v0
.end method

.method final zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzau;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzau<",
            "TK;>;"
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzba;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaw;->zzc:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaw;->zzd:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzba;-><init>([Ljava/lang/Object;II)V

    .line 5
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzbb;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbb;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzat;Lcom/google/android/gms/internal/firebase-auth-api/zzap;)V

    return-object v1
.end method

.method final zzd()Z
    .locals 1

    .line 184
    const/4 v0, 0x0

    return v0
.end method
