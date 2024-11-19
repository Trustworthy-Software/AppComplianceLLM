.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase-auth-api/zzdl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field private zza:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private zzb:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private zzc:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private zzd:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private zze:Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzb;

.field private zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzc;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;->zza:Ljava/lang/Integer;

    .line 77
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;->zzb:Ljava/lang/Integer;

    .line 78
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;->zzc:Ljava/lang/Integer;

    .line 79
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;->zzd:Ljava/lang/Integer;

    .line 80
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzb;

    .line 81
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzc;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzc;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzc;

    .line 82
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzdm;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 4
    const-string v1, "Invalid key size %d; only 16-byte, 24-byte and 32-byte AES keys are supported"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;->zza:Ljava/lang/Integer;

    .line 6
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzb;

    .line 8
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzc;)Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzc;

    .line 27
    return-object p0
.end method

.method public final zza()Lcom/google/android/gms/internal/firebase-auth-api/zzdl;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;->zza:Ljava/lang/Integer;

    if-eqz v0, :cond_f

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;->zzb:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;->zzc:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;->zzd:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    .line 36
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzb;

    if-eqz v1, :cond_b

    .line 38
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzc;

    if-eqz v1, :cond_a

    .line 40
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzb;

    .line 41
    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzb;

    if-ne v1, v2, :cond_1

    .line 42
    const/16 v1, 0x14

    if-gt v0, v1, :cond_0

    .line 46
    goto/16 :goto_0

    .line 43
    :cond_0
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 45
    const-string v2, "Invalid tag size in bytes %d; can be at most 20 bytes for SHA1"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 47
    :cond_1
    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzb;

    if-ne v1, v2, :cond_3

    .line 48
    const/16 v1, 0x1c

    if-gt v0, v1, :cond_2

    .line 52
    goto :goto_0

    .line 49
    :cond_2
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 50
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 51
    const-string v2, "Invalid tag size in bytes %d; can be at most 28 bytes for SHA224"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53
    :cond_3
    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzb;

    if-ne v1, v2, :cond_5

    .line 54
    const/16 v1, 0x20

    if-gt v0, v1, :cond_4

    .line 58
    goto :goto_0

    .line 55
    :cond_4
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 56
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 57
    const-string v2, "Invalid tag size in bytes %d; can be at most 32 bytes for SHA256"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    :cond_5
    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzb;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzb;

    if-ne v1, v2, :cond_7

    .line 60
    const/16 v1, 0x30

    if-gt v0, v1, :cond_6

    .line 64
    goto :goto_0

    .line 61
    :cond_6
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 63
    const-string v2, "Invalid tag size in bytes %d; can be at most 48 bytes for SHA384"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    :cond_7
    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzb;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzb;

    if-ne v1, v2, :cond_9

    .line 66
    const/16 v1, 0x40

    if-gt v0, v1, :cond_8

    .line 70
    nop

    .line 72
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;->zza:Ljava/lang/Integer;

    .line 73
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;->zzb:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;->zzc:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;->zzd:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzc;

    iget-object v8, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzb;

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzdl;-><init>(IIIILcom/google/android/gms/internal/firebase-auth-api/zzdl$zzc;Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzb;Lcom/google/android/gms/internal/firebase-auth-api/zzdn;)V

    .line 74
    return-object v0

    .line 67
    :cond_8
    new-instance v1, Ljava/security/GeneralSecurityException;

    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 69
    const-string v2, "Invalid tag size in bytes %d; can be at most 64 bytes for SHA512"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    :cond_9
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "unknown hash type; must be SHA1, SHA224, SHA256, SHA384 or SHA512"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_a
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "variant is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_b
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "hash type is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_c
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "tag size is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_d
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "iv size is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_e
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "HMAC key size is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_f
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "AES key size is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 9
    const/16 v0, 0x10

    if-lt p1, v0, :cond_0

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;->zzb:Ljava/lang/Integer;

    .line 14
    return-object p0

    .line 10
    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 12
    const-string v1, "Invalid key size in bytes %d; HMAC key must be at least 16 bytes"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzc(I)Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 15
    const/16 v0, 0xc

    if-lt p1, v0, :cond_0

    const/16 v0, 0x10

    if-gt p1, v0, :cond_0

    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;->zzc:Ljava/lang/Integer;

    .line 20
    return-object p0

    .line 16
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 18
    const-string v1, "Invalid IV size in bytes %d; IV size must be between 12 and 16 bytes"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzd(I)Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 21
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;->zzd:Ljava/lang/Integer;

    .line 25
    return-object p0

    .line 22
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Invalid tag size in bytes %d; must be at least 10 bytes"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
