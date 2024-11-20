.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzlt;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# static fields
.field public static final zza:[B

.field public static final zzb:[B

.field public static final zzc:[B

.field public static final zzd:[B

.field public static final zze:[B

.field public static final zzf:[B

.field public static final zzg:[B

.field public static final zzh:[B

.field public static final zzi:[B

.field public static final zzj:[B

.field public static final zzk:[B

.field public static final zzl:[B

.field private static final zzm:[B

.field private static final zzn:[B

.field private static final zzo:[B

.field private static final zzp:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 18
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zza(II)[B

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zza:[B

    .line 19
    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zza(II)[B

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zzm:[B

    .line 20
    const/16 v3, 0x20

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zza(II)[B

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zzb:[B

    .line 21
    const/16 v3, 0x10

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zza(II)[B

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zzc:[B

    .line 22
    const/16 v3, 0x11

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zza(II)[B

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zzd:[B

    .line 23
    const/16 v3, 0x12

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zza(II)[B

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zze:[B

    .line 24
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zza(II)[B

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zzf:[B

    .line 25
    invoke-static {v2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zza(II)[B

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zzg:[B

    .line 26
    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zza(II)[B

    move-result-object v4

    sput-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zzh:[B

    .line 27
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zza(II)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zzi:[B

    .line 28
    invoke-static {v2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zza(II)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zzj:[B

    .line 29
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zza(II)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zzk:[B

    .line 30
    new-array v0, v1, [B

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zzl:[B

    .line 31
    const-string v0, "KEM"

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzpf;->zza:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zzn:[B

    .line 32
    const-string v0, "HPKE"

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzpf;->zza:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zzo:[B

    .line 33
    const-string v0, "HPKE-v1"

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzpf;->zza:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zzp:[B

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzuo;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzls;->zza:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuo;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/16 v0, 0x20

    packed-switch p0, :pswitch_data_0

    .line 6
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Unrecognized HPKE KEM identifier"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2
    :pswitch_0
    return v0

    .line 5
    :pswitch_1
    const/16 p0, 0x42

    return p0

    .line 4
    :pswitch_2
    const/16 p0, 0x30

    return p0

    .line 3
    :pswitch_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzur;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzur;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzuo;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzuo;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzuo;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzur;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzuo;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzuo;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzuo;

    if-eq v0, v1, :cond_2

    .line 36
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzur;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzum;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzum;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzum;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzur;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzum;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzum;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzum;

    if-eq v0, v1, :cond_1

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzur;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzuk;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzuk;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzuk;

    if-eq v0, v1, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzur;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzuk;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzuk;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzuk;

    if-eq v0, v1, :cond_0

    .line 41
    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzur;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzuk;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuk;->name()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid AEAD param: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzur;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzum;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzum;->name()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid KDF param: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzur;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzuo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuo;->name()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid KEM param: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static zza(II)[B
    .locals 3

    .line 43
    new-array v0, p0, [B

    .line 44
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 45
    sub-int v2, p0, v1

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x8

    shr-int v2, p1, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    :cond_0
    return-object v0
.end method

.method static zza(Ljava/lang/String;[B[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 49
    const/4 v0, 0x4

    new-array v0, v0, [[B

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zzp:[B

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    sget-object p2, Lcom/google/android/gms/internal/firebase-auth-api/zzpf;->zza:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const/4 p2, 0x2

    aput-object p0, v0, p2

    const/4 p0, 0x3

    aput-object p1, v0, p0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzwg;->zza([[B)[B

    move-result-object p0

    return-object p0
.end method

.method static zza(Ljava/lang/String;[B[BI)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 50
    const/4 v0, 0x5

    new-array v0, v0, [[B

    const/4 v1, 0x2

    invoke-static {v1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zza(II)[B

    move-result-object p3

    const/4 v2, 0x0

    aput-object p3, v0, v2

    const/4 p3, 0x1

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zzp:[B

    aput-object v2, v0, p3

    aput-object p2, v0, v1

    sget-object p2, Lcom/google/android/gms/internal/firebase-auth-api/zzpf;->zza:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const/4 p2, 0x3

    aput-object p0, v0, p2

    const/4 p0, 0x4

    aput-object p1, v0, p0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzwg;->zza([[B)[B

    move-result-object p0

    return-object p0
.end method

.method static zza([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [[B

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zzn:[B

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzwg;->zza([[B)[B

    move-result-object p0

    return-object p0
.end method

.method static zza([B[B[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 42
    const/4 v0, 0x4

    new-array v0, v0, [[B

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzlt;->zzo:[B

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 p0, 0x2

    aput-object p1, v0, p0

    const/4 p0, 0x3

    aput-object p2, v0, p0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzwg;->zza([[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzuo;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzls;->zza:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuo;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 12
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Unrecognized HPKE KEM identifier"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :pswitch_0
    const/16 p0, 0x20

    return p0

    .line 11
    :pswitch_1
    const/16 p0, 0x85

    return p0

    .line 10
    :pswitch_2
    const/16 p0, 0x61

    return p0

    .line 9
    :pswitch_3
    const/16 p0, 0x41

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzuo;)Lcom/google/android/gms/internal/firebase-auth-api/zzwo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzls;->zza:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuo;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 17
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Unrecognized NIST HPKE KEM identifier"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwo;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzwo;

    return-object p0

    .line 15
    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwo;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzwo;

    return-object p0

    .line 14
    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwo;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzwo;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
