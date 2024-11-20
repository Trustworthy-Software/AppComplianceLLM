.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzkm;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# static fields
.field private static final zza:Ljava/lang/String;

.field private static final zzb:Ljava/lang/String;

.field private static final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvt;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzvt;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final zze:Lcom/google/android/gms/internal/firebase-auth-api/zzvt;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzjj;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zznb;->zze()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkm;->zza:Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzji;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzji;-><init>()V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zznb;->zze()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkm;->zzb:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzvt;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzvt;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkm;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvt;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzvt;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzvt;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkm;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzvt;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzvt;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzvt;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkm;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzvt;

    .line 8
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzkm;->zza()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-void

    .line 10
    :catch_0
    move-exception v0

    .line 11
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static zza()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzkp;->zzc()V

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzkr;->zzc()V

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzcw;->zza()V

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zziz;->zza()V

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzif;->zzb()Z

    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    return-void

    .line 19
    :cond_0
    nop

    .line 20
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzji;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzji;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzjj;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzjj;-><init>()V

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzop;Lcom/google/android/gms/internal/firebase-auth-api/zznb;Z)V

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzjt;->zza()V

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzns;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzns;

    move-result-object v0

    .line 23
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 24
    nop

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;

    .line 26
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;)Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzb;

    .line 27
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zze;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zze;

    .line 28
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zze;)Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzd;

    .line 29
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzd;)Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;

    move-result-object v3

    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;

    move-result-object v4

    .line 31
    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;

    move-result-object v4

    .line 32
    const/16 v6, 0x10

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;->zzb(I)Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;

    move-result-object v4

    .line 33
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;->zzc(I)Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;

    move-result-object v4

    sget-object v7, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;

    .line 34
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;

    move-result-object v4

    .line 35
    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzes;

    move-result-object v4

    .line 36
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzch;)Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;

    move-result-object v3

    .line 37
    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzjl;

    move-result-object v3

    .line 38
    const-string v4, "ECIES_P256_HKDF_HMAC_SHA256_AES128_GCM"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    nop

    .line 40
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;

    .line 41
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;)Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzb;

    .line 42
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zze;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zze;

    .line 43
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zze;)Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzd;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzd;

    .line 44
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzd;)Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;

    move-result-object v3

    .line 45
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;

    move-result-object v4

    .line 46
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;

    move-result-object v4

    .line 47
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;->zzb(I)Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;

    move-result-object v4

    .line 48
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;->zzc(I)Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;

    move-result-object v4

    sget-object v7, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;

    .line 49
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;

    move-result-object v4

    .line 50
    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzes;

    move-result-object v4

    .line 51
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzch;)Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;

    move-result-object v3

    .line 52
    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzjl;

    move-result-object v3

    .line 53
    const-string v4, "ECIES_P256_HKDF_HMAC_SHA256_AES128_GCM_RAW"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    nop

    .line 55
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;

    .line 56
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;)Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzb;

    .line 57
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zze;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zze;

    .line 58
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zze;)Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzd;

    .line 59
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzd;)Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;

    move-result-object v3

    .line 60
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;

    move-result-object v4

    .line 61
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;

    move-result-object v4

    .line 62
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;->zzb(I)Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;

    move-result-object v4

    .line 63
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;->zzc(I)Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;

    move-result-object v4

    sget-object v7, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;

    .line 64
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;

    move-result-object v4

    .line 65
    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzes;

    move-result-object v4

    .line 66
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzch;)Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;

    move-result-object v3

    .line 67
    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzjl;

    move-result-object v3

    .line 68
    const-string v4, "ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_GCM"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    nop

    .line 70
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;

    .line 71
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;)Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzb;

    .line 72
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zze;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zze;

    .line 73
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zze;)Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzd;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzd;

    .line 74
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzd;)Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;

    move-result-object v3

    .line 75
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;

    move-result-object v4

    .line 76
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;

    move-result-object v4

    .line 77
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;->zzb(I)Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;

    move-result-object v4

    .line 78
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;->zzc(I)Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;

    move-result-object v4

    sget-object v7, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;

    .line 79
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;

    move-result-object v4

    .line 80
    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzes;

    move-result-object v4

    .line 81
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzch;)Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;

    move-result-object v3

    .line 82
    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzjl;

    move-result-object v3

    .line 83
    const-string v4, "ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_GCM_RAW"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    nop

    .line 85
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;

    .line 86
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;)Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzb;

    .line 87
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zze;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zze;

    .line 88
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zze;)Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzd;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzd;

    .line 89
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzd;)Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;

    move-result-object v3

    .line 90
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzes;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;

    move-result-object v4

    .line 91
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;

    move-result-object v4

    .line 92
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;->zzb(I)Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;

    move-result-object v4

    .line 93
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;->zzc(I)Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;

    .line 94
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzes$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;

    move-result-object v4

    .line 95
    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzes$zza;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzes;

    move-result-object v4

    .line 96
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzch;)Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;

    move-result-object v3

    .line 97
    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzjl;

    move-result-object v3

    .line 98
    const-string v4, "ECIES_P256_HKDF_HMAC_SHA256_AES128_GCM_COMPRESSED_WITHOUT_PREFIX"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    nop

    .line 100
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;

    .line 101
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;)Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzb;

    .line 102
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zze;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zze;

    .line 103
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zze;)Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzd;

    .line 104
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzd;)Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;

    move-result-object v3

    .line 105
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzdl;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;

    move-result-object v4

    .line 106
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;

    move-result-object v4

    .line 107
    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;->zzb(I)Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;

    move-result-object v4

    .line 108
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;->zzd(I)Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;

    move-result-object v4

    .line 109
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;->zzc(I)Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;

    move-result-object v4

    sget-object v7, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzb;

    .line 110
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;

    move-result-object v4

    sget-object v7, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzc;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzc;

    .line 111
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzc;)Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;

    move-result-object v4

    .line 112
    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzdl;

    move-result-object v4

    .line 113
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzch;)Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;

    move-result-object v3

    .line 114
    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzjl;

    move-result-object v3

    .line 115
    const-string v4, "ECIES_P256_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    nop

    .line 117
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;

    .line 118
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;)Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzb;

    .line 119
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zze;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zze;

    .line 120
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zze;)Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzd;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzd;

    .line 121
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzd;)Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;

    move-result-object v3

    .line 122
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzdl;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;

    move-result-object v4

    .line 123
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;

    move-result-object v4

    .line 124
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;->zzb(I)Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;

    move-result-object v4

    .line 125
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;->zzd(I)Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;

    move-result-object v4

    .line 126
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;->zzc(I)Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;

    move-result-object v4

    sget-object v7, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzb;

    .line 127
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;

    move-result-object v4

    sget-object v7, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzc;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzc;

    .line 128
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzc;)Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;

    move-result-object v4

    .line 129
    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzdl;

    move-result-object v4

    .line 130
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzch;)Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;

    move-result-object v3

    .line 131
    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzjl;

    move-result-object v3

    .line 132
    const-string v4, "ECIES_P256_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256_RAW"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    nop

    .line 134
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;

    .line 135
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;)Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzb;

    .line 136
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zze;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zze;

    .line 137
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zze;)Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzd;

    .line 138
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzd;)Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;

    move-result-object v3

    .line 139
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzdl;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;

    move-result-object v4

    .line 140
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;

    move-result-object v4

    .line 141
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;->zzb(I)Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;

    move-result-object v4

    .line 142
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;->zzd(I)Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;

    move-result-object v4

    .line 143
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;->zzc(I)Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;

    move-result-object v4

    sget-object v7, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzb;

    .line 144
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;

    move-result-object v4

    sget-object v7, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzc;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzc;

    .line 145
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzc;)Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;

    move-result-object v4

    .line 146
    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzdl;

    move-result-object v4

    .line 147
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzch;)Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;

    move-result-object v3

    .line 148
    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzjl;

    move-result-object v3

    .line 149
    const-string v4, "ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    nop

    .line 151
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;

    .line 152
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;)Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzb;

    .line 153
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zze;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zze;

    .line 154
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zze;)Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzd;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzd;

    .line 155
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzd;)Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;

    move-result-object v3

    .line 156
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzdl;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;

    move-result-object v4

    .line 157
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;

    move-result-object v4

    .line 158
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;->zzb(I)Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;

    move-result-object v4

    .line 159
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;->zzd(I)Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;

    move-result-object v4

    .line 160
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;->zzc(I)Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzb;

    .line 161
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzc;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzc;

    .line 162
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zzc;)Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;

    move-result-object v4

    .line 163
    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzdl$zza;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzdl;

    move-result-object v4

    .line 164
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzch;)Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;

    move-result-object v3

    .line 165
    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zza;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzjl;

    move-result-object v3

    .line 166
    const-string v4, "ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256_RAW"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 168
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzns;->zza(Ljava/util/Map;)V

    .line 169
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzln;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzln;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzlr;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzlr;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzct;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzop;Lcom/google/android/gms/internal/firebase-auth-api/zznb;Z)V

    .line 170
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzke;->zza()V

    .line 171
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzns;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzns;

    move-result-object v0

    .line 172
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 173
    nop

    .line 174
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzka;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;

    .line 175
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;

    .line 176
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;

    .line 177
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;

    .line 178
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    .line 179
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzka;

    move-result-object v2

    .line 180
    const-string v3, "DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_AES_128_GCM"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    nop

    .line 182
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzka;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;

    .line 183
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;

    .line 184
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;

    .line 185
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;

    .line 186
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    .line 187
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzka;

    move-result-object v2

    .line 188
    const-string v3, "DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_AES_128_GCM_RAW"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    nop

    .line 190
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzka;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;

    .line 191
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;

    .line 192
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;

    .line 193
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;

    .line 194
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    .line 195
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzka;

    move-result-object v2

    .line 196
    const-string v3, "DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_AES_256_GCM"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    nop

    .line 198
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzka;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;

    .line 199
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;

    .line 200
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;

    .line 201
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;

    .line 202
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    .line 203
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzka;

    move-result-object v2

    .line 204
    const-string v3, "DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_AES_256_GCM_RAW"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    nop

    .line 206
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzka;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;

    .line 207
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;

    .line 208
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;

    .line 209
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;

    .line 210
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    .line 211
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzka;

    move-result-object v2

    .line 212
    const-string v3, "DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_CHACHA20_POLY1305"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    nop

    .line 214
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzka;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;

    .line 215
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;

    .line 216
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;

    .line 217
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;

    .line 218
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    .line 219
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzka;

    move-result-object v2

    .line 220
    const-string v3, "DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_CHACHA20_POLY1305_RAW"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    nop

    .line 222
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzka;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;

    .line 223
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;

    .line 224
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;

    .line 225
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;

    .line 226
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    .line 227
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzka;

    move-result-object v2

    .line 228
    const-string v3, "DHKEM_P256_HKDF_SHA256_HKDF_SHA256_AES_128_GCM"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    nop

    .line 230
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzka;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;

    .line 231
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;

    .line 232
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;

    .line 233
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;

    .line 234
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    .line 235
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzka;

    move-result-object v2

    .line 236
    const-string v3, "DHKEM_P256_HKDF_SHA256_HKDF_SHA256_AES_128_GCM_RAW"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    nop

    .line 238
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzka;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;

    .line 239
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;

    .line 240
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;

    .line 241
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;

    .line 242
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    .line 243
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzka;

    move-result-object v2

    .line 244
    const-string v3, "DHKEM_P256_HKDF_SHA256_HKDF_SHA256_AES_256_GCM"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    nop

    .line 246
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzka;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;

    .line 247
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;

    .line 248
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;

    .line 249
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;

    .line 250
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    .line 251
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzka;

    move-result-object v2

    .line 252
    const-string v3, "DHKEM_P256_HKDF_SHA256_HKDF_SHA256_AES_256_GCM_RAW"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    nop

    .line 254
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzka;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;

    .line 255
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;

    .line 256
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;

    .line 257
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;

    .line 258
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    .line 259
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzka;

    move-result-object v2

    .line 260
    const-string v3, "DHKEM_P384_HKDF_SHA384_HKDF_SHA384_AES_128_GCM"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    nop

    .line 262
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzka;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;

    .line 263
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;

    .line 264
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;

    .line 265
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;

    .line 266
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    .line 267
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzka;

    move-result-object v2

    .line 268
    const-string v3, "DHKEM_P384_HKDF_SHA384_HKDF_SHA384_AES_128_GCM_RAW"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    nop

    .line 270
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzka;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;

    .line 271
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;

    .line 272
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;

    .line 273
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;

    .line 274
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    .line 275
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzka;

    move-result-object v2

    .line 276
    const-string v3, "DHKEM_P384_HKDF_SHA384_HKDF_SHA384_AES_256_GCM"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    nop

    .line 278
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzka;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;

    .line 279
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;

    .line 280
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;

    .line 281
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;

    .line 282
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    .line 283
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzka;

    move-result-object v2

    .line 284
    const-string v3, "DHKEM_P384_HKDF_SHA384_HKDF_SHA384_AES_256_GCM_RAW"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    nop

    .line 286
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzka;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;

    .line 287
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;

    .line 288
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;

    .line 289
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;

    .line 290
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    .line 291
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzka;

    move-result-object v2

    .line 292
    const-string v3, "DHKEM_P521_HKDF_SHA512_HKDF_SHA512_AES_128_GCM"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    nop

    .line 294
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzka;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;

    .line 295
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;

    .line 296
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;

    .line 297
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;

    .line 298
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    .line 299
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzka;

    move-result-object v2

    .line 300
    const-string v3, "DHKEM_P521_HKDF_SHA512_HKDF_SHA512_AES_128_GCM_RAW"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    nop

    .line 302
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzka;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;

    .line 303
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;

    .line 304
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;

    .line 305
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;

    .line 306
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    .line 307
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzka;

    move-result-object v2

    .line 308
    const-string v3, "DHKEM_P521_HKDF_SHA512_HKDF_SHA512_AES_256_GCM"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    nop

    .line 310
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzka;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;

    .line 311
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;

    .line 312
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;

    .line 313
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;

    .line 314
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;

    move-result-object v2

    .line 315
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzka;

    move-result-object v2

    .line 316
    const-string v3, "DHKEM_P521_HKDF_SHA512_HKDF_SHA512_AES_256_GCM_RAW"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 318
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzns;->zza(Ljava/util/Map;)V

    .line 319
    return-void
.end method
