.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzfu;
.super Lcom/google/android/gms/internal/firebase-auth-api/zznb;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zznb<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zztg;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 4

    .line 8
    const-class v0, Lcom/google/android/gms/internal/firebase-auth-api/zztg;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/internal/firebase-auth-api/zzoh;

    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzft;

    const-class v3, Lcom/google/android/gms/internal/firebase-auth-api/zzbg;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzft;-><init>(Ljava/lang/Class;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zznb;-><init>(Ljava/lang/Class;[Lcom/google/android/gms/internal/firebase-auth-api/zzoh;)V

    .line 9
    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;)Lcom/google/android/gms/internal/firebase-auth-api/zzakb;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase-auth-api/zzaja;
        }
    .end annotation

    .line 4
    nop

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaig;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzaig;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zztg;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;Lcom/google/android/gms/internal/firebase-auth-api/zzaig;)Lcom/google/android/gms/internal/firebase-auth-api/zztg;

    move-result-object p1

    .line 6
    return-object p1
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 10
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zztg;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zztg;->zza()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxo;->zza(II)V

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zztg;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zzb()I

    move-result p1

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    .line 14
    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid ChaCha20Poly1305Key: incorrect key length"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzif$zza;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzif$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzif$zza;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzne;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzne<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzth;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zztg;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzfw;

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzth;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzfw;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzfu;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zza;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zza;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zza;

    return-object v0
.end method

.method public final zze()Ljava/lang/String;
    .locals 1

    .line 7
    const-string v0, "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key"

    return-object v0
.end method
