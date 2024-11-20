.class final Lcom/google/android/gms/internal/firebase-auth-api/zzamb;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# direct methods
.method static synthetic zza(BBBB[CI)V
    .locals 2

    .line 1
    nop

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzamb;->zza(B)Z

    move-result v0

    if-nez v0, :cond_0

    shl-int/lit8 v0, p0, 0x1c

    add-int/lit8 v1, p1, 0x70

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1e

    if-nez v0, :cond_0

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamb;->zza(B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzamb;->zza(B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    and-int/lit8 p0, p0, 0x7

    shl-int/lit8 p0, p0, 0x12

    .line 7
    and-int/lit8 p1, p1, 0x3f

    .line 8
    shl-int/lit8 p1, p1, 0xc

    or-int/2addr p0, p1

    .line 9
    and-int/lit8 p1, p2, 0x3f

    .line 10
    shl-int/lit8 p1, p1, 0x6

    or-int/2addr p0, p1

    .line 11
    and-int/lit8 p1, p3, 0x3f

    .line 12
    or-int/2addr p0, p1

    .line 13
    nop

    .line 14
    ushr-int/lit8 p1, p0, 0xa

    const p2, 0xd7c0

    add-int/2addr p1, p2

    int-to-char p1, p1

    .line 15
    aput-char p1, p4, p5

    .line 16
    add-int/lit8 p5, p5, 0x1

    .line 17
    and-int/lit16 p0, p0, 0x3ff

    const p1, 0xdc00

    add-int/2addr p0, p1

    int-to-char p0, p0

    .line 18
    aput-char p0, p4, p5

    .line 19
    return-void

    .line 5
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    move-result-object p0

    throw p0
.end method

.method static synthetic zza(BBB[CI)V
    .locals 2

    .line 23
    nop

    .line 24
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzamb;->zza(B)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, -0x20

    const/16 v1, -0x60

    if-ne p0, v0, :cond_0

    if-lt p1, v1, :cond_2

    :cond_0
    const/16 v0, -0x13

    if-ne p0, v0, :cond_1

    if-ge p1, v1, :cond_2

    .line 25
    :cond_1
    invoke-static {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzamb;->zza(B)Z

    move-result v0

    if-nez v0, :cond_2

    .line 27
    and-int/lit8 p0, p0, 0xf

    shl-int/lit8 p0, p0, 0xc

    .line 28
    and-int/lit8 p1, p1, 0x3f

    .line 29
    shl-int/lit8 p1, p1, 0x6

    or-int/2addr p0, p1

    .line 30
    and-int/lit8 p1, p2, 0x3f

    .line 31
    or-int/2addr p0, p1

    int-to-char p0, p0

    aput-char p0, p3, p4

    .line 32
    return-void

    .line 26
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    move-result-object p0

    throw p0
.end method

.method static synthetic zza(BB[CI)V
    .locals 1

    .line 33
    nop

    .line 34
    const/16 v0, -0x3e

    if-lt p0, v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzamb;->zza(B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    and-int/lit8 p0, p0, 0x1f

    shl-int/lit8 p0, p0, 0x6

    .line 37
    and-int/lit8 p1, p1, 0x3f

    .line 38
    or-int/2addr p0, p1

    int-to-char p0, p0

    aput-char p0, p2, p3

    .line 39
    return-void

    .line 35
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaja;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzaja;

    move-result-object p0

    throw p0
.end method

.method static synthetic zza(B[CI)V
    .locals 0

    .line 20
    nop

    .line 21
    int-to-char p0, p0

    aput-char p0, p1, p2

    .line 22
    return-void
.end method

.method private static zza(B)Z
    .locals 1

    .line 40
    const/16 v0, -0x41

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
