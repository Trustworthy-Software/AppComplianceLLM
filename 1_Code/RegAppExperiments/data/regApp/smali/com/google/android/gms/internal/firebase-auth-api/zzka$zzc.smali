.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase-auth-api/zzka;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzc"
.end annotation


# instance fields
.field private zza:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;

.field private zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;

.field private zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;

.field private zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;

    .line 20
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;

    .line 21
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;

    .line 22
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;

    .line 23
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzkc;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;

    .line 2
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;

    .line 6
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;

    .line 4
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;)Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;

    .line 8
    return-object p0
.end method

.method public final zza()Lcom/google/android/gms/internal/firebase-auth-api/zzka;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;

    if-eqz v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;

    if-eqz v0, :cond_1

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;

    if-eqz v0, :cond_0

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzka;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;

    iget-object v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;

    iget-object v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzc;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzka;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzd;Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;Lcom/google/android/gms/internal/firebase-auth-api/zzka$zza;Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzf;Lcom/google/android/gms/internal/firebase-auth-api/zzkd;)V

    return-object v0

    .line 16
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "HPKE variant is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "HPKE AEAD parameter is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "HPKE KDF parameter is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_3
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "HPKE KEM parameter is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
