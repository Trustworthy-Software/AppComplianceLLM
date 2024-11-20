.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzjg;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzir;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjf;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjf;

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzpd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzpg;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzir;

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjg;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzir;

    .line 8
    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/firebase-auth-api/zzir;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzir;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzir$zza;

    move-result-object v0

    .line 2
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzir$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzir$zza;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzir$zzb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzir$zzb;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzir$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzir$zzb;)Lcom/google/android/gms/internal/firebase-auth-api/zzir$zza;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzir$zza;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzir;

    move-result-object v0

    .line 5
    return-object v0
.end method
