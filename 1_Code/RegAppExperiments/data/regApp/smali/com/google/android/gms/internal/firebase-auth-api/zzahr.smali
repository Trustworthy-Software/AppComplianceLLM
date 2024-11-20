.class final Lcom/google/android/gms/internal/firebase-auth-api/zzahr;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzahs;
.source "com.google.firebase:firebase-auth@@22.2.0"


# instance fields
.field private final zze:[B

.field private final zzf:Z

.field private zzg:I

.field private zzh:I

.field private zzi:I

.field private zzj:I

.field private zzk:I

.field private zzl:I


# direct methods
.method private constructor <init>([BIIZ)V
    .locals 1

    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahs;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzahy;)V

    .line 145
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzl:I

    .line 146
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zze:[B

    .line 147
    add-int/2addr p3, p2

    iput p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzg:I

    .line 148
    iput p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzi:I

    .line 149
    iput p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzj:I

    .line 150
    iput-boolean p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzf:Z

    .line 151
    return-void
.end method

.method synthetic constructor <init>([BIIZLcom/google/android/gms/internal/firebase-auth-api/zzahu;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;-><init>([BIIZ)V

    return-void
.end method

.method private final zzaa()V
    .locals 3

    .line 158
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzg:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzh:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzg:I

    .line 159
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzj:I

    sub-int v1, v0, v1

    .line 160
    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzl:I

    if-le v1, v2, :cond_0

    .line 161
    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzh:I

    .line 162
    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzg:I

    return-void

    .line 163
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzh:I

    .line 164
    return-void
.end method

.method private final zzf(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzg:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzi:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    .line 166
    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzi:I

    .line 167
    return-void

    .line 168
    :cond_0
    if-gez p1, :cond_1

    .line 169
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    move-result-object p1

    throw p1

    .line 170
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zzi()Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    move-result-object p1

    throw p1
.end method

.method private final zzv()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzi:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzg:I

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zze:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzi:I

    aget-byte v0, v1, v0

    return v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zzi()Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    move-result-object v0

    throw v0
.end method

.method private final zzw()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzi:I

    .line 22
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzg:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zze:[B

    .line 25
    add-int/lit8 v2, v0, 0x4

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzi:I

    .line 26
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0

    .line 23
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zzi()Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    move-result-object v0

    throw v0
.end method

.method private final zzx()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzi:I

    .line 28
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzg:I

    if-eq v1, v0, :cond_6

    .line 29
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zze:[B

    .line 30
    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    if-ltz v0, :cond_0

    .line 31
    iput v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzi:I

    .line 32
    return v0

    .line 33
    :cond_0
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-lt v1, v4, :cond_6

    .line 34
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_1

    .line 35
    xor-int/lit8 v0, v0, -0x80

    goto :goto_0

    .line 36
    :cond_1
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_2

    .line 37
    xor-int/lit16 v0, v0, 0x3f80

    move v1, v3

    goto :goto_0

    .line 38
    :cond_2
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_3

    .line 39
    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_0

    .line 40
    :cond_3
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    .line 41
    shl-int/lit8 v4, v1, 0x1c

    xor-int/2addr v0, v4

    .line 42
    const v4, 0xfe03f80

    xor-int/2addr v0, v4

    .line 43
    if-gez v1, :cond_4

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_5

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_4

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_5

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_4

    add-int/lit8 v1, v3, 0x1

    aget-byte v2, v2, v3

    if-ltz v2, :cond_6

    goto :goto_0

    :cond_4
    move v1, v3

    .line 44
    :cond_5
    :goto_0
    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzi:I

    .line 45
    return v0

    .line 46
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahs;->zzm()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private final zzy()J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzi:I

    .line 62
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzg:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 64
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zze:[B

    .line 65
    add-int/lit8 v3, v0, 0x8

    iput v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzi:I

    .line 66
    aget-byte v3, v1, v0

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x10

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x18

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x4

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x20

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x5

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x28

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x30

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v5

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0

    .line 63
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zzi()Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    move-result-object v0

    throw v0
.end method

.method private final zzz()J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzi:I

    .line 68
    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzg:I

    if-eq v1, v0, :cond_9

    .line 69
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zze:[B

    .line 70
    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    if-ltz v0, :cond_0

    .line 71
    iput v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzi:I

    .line 72
    int-to-long v0, v0

    return-wide v0

    .line 73
    :cond_0
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-lt v1, v4, :cond_9

    .line 74
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_1

    .line 75
    xor-int/lit8 v0, v0, -0x80

    int-to-long v2, v0

    goto/16 :goto_0

    .line 76
    :cond_1
    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_2

    .line 77
    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    move-wide v9, v0

    move v1, v3

    move-wide v2, v9

    goto/16 :goto_0

    .line 78
    :cond_2
    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_3

    .line 79
    const v2, -0x1fc080

    xor-int/2addr v0, v2

    int-to-long v2, v0

    goto/16 :goto_0

    .line 80
    :cond_3
    int-to-long v3, v0

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v5, v1

    const/16 v1, 0x1c

    shl-long/2addr v5, v1

    xor-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-ltz v1, :cond_4

    .line 81
    const-wide/32 v1, 0xfe03f80

    xor-long v2, v3, v1

    move v1, v0

    goto :goto_0

    .line 82
    :cond_4
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x23

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_5

    .line 83
    const-wide v5, -0x7f01fc080L

    xor-long v2, v3, v5

    goto :goto_0

    .line 84
    :cond_5
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x2a

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-ltz v1, :cond_6

    .line 85
    const-wide v1, 0x3f80fe03f80L

    xor-long v2, v3, v1

    move v1, v0

    goto :goto_0

    .line 86
    :cond_6
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x31

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_7

    .line 87
    const-wide v5, -0x1fc07f01fc080L

    xor-long v2, v3, v5

    goto :goto_0

    .line 88
    :cond_7
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x38

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    .line 89
    const-wide v7, 0xfe03f80fe03f80L

    xor-long/2addr v3, v7

    .line 90
    cmp-long v1, v3, v5

    if-gez v1, :cond_8

    .line 91
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v2, v0

    int-to-long v7, v0

    cmp-long v0, v7, v5

    if-ltz v0, :cond_9

    move-wide v2, v3

    goto :goto_0

    .line 90
    :cond_8
    move v1, v0

    move-wide v2, v3

    .line 92
    :goto_0
    iput v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzi:I

    .line 93
    return-wide v2

    .line 94
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahs;->zzm()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final zza()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzy()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final zza(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase-auth-api/zzaja;
        }
    .end annotation

    .line 7
    if-ltz p1, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahs;->zzc()I

    move-result v0

    add-int/2addr p1, v0

    .line 10
    if-ltz p1, :cond_1

    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzl:I

    .line 13
    if-gt p1, v0, :cond_0

    .line 15
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzl:I

    .line 16
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzaa()V

    .line 17
    return v0

    .line 14
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zzi()Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    move-result-object p1

    throw p1

    .line 11
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    move-result-object p1

    throw p1

    .line 8
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    move-result-object p1

    throw p1
.end method

.method public final zzb()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzw()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final zzb(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase-auth-api/zzaja;
        }
    .end annotation

    .line 152
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzk:I

    if-ne v0, p1, :cond_0

    .line 154
    return-void

    .line 153
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    move-result-object p1

    throw p1
.end method

.method public final zzc()I
    .locals 2

    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzi:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzj:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final zzc(I)V
    .locals 0

    .line 155
    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzl:I

    .line 156
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzaa()V

    .line 157
    return-void
.end method

.method public final zzd()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzx()I

    move-result v0

    return v0
.end method

.method public final zzd(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    nop

    .line 174
    and-int/lit8 v0, p1, 0x7

    .line 175
    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    .line 207
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzaiz;

    move-result-object p1

    throw p1

    .line 205
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzf(I)V

    .line 206
    return v3

    .line 204
    :pswitch_1
    return v2

    .line 194
    :pswitch_2
    nop

    .line 195
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahs;->zzi()I

    move-result v0

    .line 196
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahs;->zzd(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 198
    :cond_0
    goto :goto_0

    .line 197
    :cond_1
    :goto_1
    nop

    .line 199
    nop

    .line 200
    ushr-int/lit8 p1, p1, 0x3

    .line 201
    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, v1

    .line 202
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahs;->zzb(I)V

    .line 203
    return v3

    .line 192
    :pswitch_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzx()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzf(I)V

    .line 193
    return v3

    .line 190
    :pswitch_4
    const/16 p1, 0x8

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzf(I)V

    .line 191
    return v3

    .line 176
    :pswitch_5
    nop

    .line 177
    iget p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzg:I

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzi:I

    sub-int/2addr p1, v0

    const/16 v0, 0xa

    if-lt p1, v0, :cond_4

    .line 178
    nop

    .line 179
    nop

    :goto_2
    if-ge v2, v0, :cond_3

    .line 180
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zze:[B

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzi:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzi:I

    aget-byte p1, p1, v1

    if-gez p1, :cond_2

    .line 181
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 183
    :cond_2
    goto :goto_4

    .line 182
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    move-result-object p1

    throw p1

    .line 184
    :cond_4
    nop

    .line 185
    nop

    :goto_3
    if-ge v2, v0, :cond_6

    .line 186
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzv()B

    move-result p1

    if-gez p1, :cond_5

    .line 187
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 189
    :cond_5
    :goto_4
    return v3

    .line 188
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    move-result-object p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zze()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzw()I

    move-result v0

    return v0
.end method

.method public final zzf()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzx()I

    move-result v0

    return v0
.end method

.method public final zzg()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzw()I

    move-result v0

    return v0
.end method

.method public final zzh()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzx()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zze(I)I

    move-result v0

    return v0
.end method

.method public final zzi()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahs;->zzt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzk:I

    .line 51
    return v0

    .line 52
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzx()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzk:I

    .line 53
    nop

    .line 54
    ushr-int/lit8 v1, v0, 0x3

    .line 55
    if-eqz v1, :cond_1

    .line 57
    return v0

    .line 56
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    move-result-object v0

    throw v0
.end method

.method public final zzj()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzx()I

    move-result v0

    return v0
.end method

.method public final zzk()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzy()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzl()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzz()J

    move-result-wide v0

    return-wide v0
.end method

.method final zzm()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    nop

    .line 96
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    .line 97
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzv()B

    move-result v3

    .line 98
    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    .line 99
    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    .line 100
    return-wide v0

    .line 101
    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    .line 102
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    move-result-object v0

    throw v0
.end method

.method public final zzn()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzy()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzo()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzz()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zza(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzp()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzz()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzq()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzx()I

    move-result v0

    .line 107
    if-lez v0, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzg:I

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzi:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zze:[B

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zza([BII)Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object v1

    .line 109
    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzi:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzi:I

    .line 110
    return-object v1

    .line 111
    :cond_0
    if-nez v0, :cond_1

    .line 112
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    return-object v0

    .line 113
    :cond_1
    nop

    .line 114
    if-lez v0, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzg:I

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzi:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_2

    .line 115
    nop

    .line 116
    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzi:I

    .line 117
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zze:[B

    invoke-static {v1, v2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    goto :goto_0

    .line 118
    :cond_2
    if-gtz v0, :cond_4

    .line 119
    if-nez v0, :cond_3

    .line 120
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzait;->zzb:[B

    .line 123
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zzb([B)Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object v0

    return-object v0

    .line 121
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    move-result-object v0

    throw v0

    .line 122
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zzi()Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    move-result-object v0

    throw v0
.end method

.method public final zzr()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzx()I

    move-result v0

    .line 125
    if-lez v0, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzg:I

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzi:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 126
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zze:[B

    iget v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzi:I

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzait;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 127
    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzi:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzi:I

    .line 128
    return-object v1

    .line 129
    :cond_0
    if-nez v0, :cond_1

    .line 130
    const-string v0, ""

    return-object v0

    .line 131
    :cond_1
    if-gez v0, :cond_2

    .line 132
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    move-result-object v0

    throw v0

    .line 133
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zzi()Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    move-result-object v0

    throw v0
.end method

.method public final zzs()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzx()I

    move-result v0

    .line 135
    if-lez v0, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzg:I

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzi:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zze:[B

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzamc;->zzb([BII)Ljava/lang/String;

    move-result-object v1

    .line 137
    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzi:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzi:I

    .line 138
    return-object v1

    .line 139
    :cond_0
    if-nez v0, :cond_1

    .line 140
    const-string v0, ""

    return-object v0

    .line 141
    :cond_1
    if-gtz v0, :cond_2

    .line 142
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    move-result-object v0

    throw v0

    .line 143
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zzi()Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    move-result-object v0

    throw v0
.end method

.method public final zzt()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzi:I

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzg:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzu()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;->zzz()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
