.class final Lcom/google/android/gms/internal/firebase-auth-api/zzgf;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzoh;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzoh<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzbg;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzvk;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzoh;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzvk;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvk;->zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzvn;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvn;->zzd()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcf;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzcc;

    move-result-object v0

    .line 4
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcc;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzbg;

    move-result-object p1

    .line 5
    return-object p1
.end method
