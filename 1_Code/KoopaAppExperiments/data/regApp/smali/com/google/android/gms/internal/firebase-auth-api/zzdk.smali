.class final Lcom/google/android/gms/internal/firebase-auth-api/zzdk;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzoh;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzoh<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzbg;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzoh;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzse;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzwq;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzdv;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzdv;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzse;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzsi;

    move-result-object v2

    const-class v3, Lcom/google/android/gms/internal/firebase-auth-api/zzxi;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zznb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/zzxi;

    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzqg;

    invoke-direct {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzqg;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzse;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzuc;

    move-result-object v3

    const-class v4, Lcom/google/android/gms/internal/firebase-auth-api/zzce;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zznb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zzce;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzse;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzuc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzuc;->zze()Lcom/google/android/gms/internal/firebase-auth-api/zzuh;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzuh;->zza()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwq;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzxi;Lcom/google/android/gms/internal/firebase-auth-api/zzce;I)V

    .line 6
    return-object v0
.end method
