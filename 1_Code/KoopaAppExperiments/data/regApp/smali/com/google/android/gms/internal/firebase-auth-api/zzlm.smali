.class final Lcom/google/android/gms/internal/firebase-auth-api/zzlm;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzoh;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzoh<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzbo;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzuu;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzoh;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzuu;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzlf;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzuu;)Lcom/google/android/gms/internal/firebase-auth-api/zzlf;

    move-result-object p1

    .line 3
    return-object p1
.end method
