.class public Lcom/google/android/gms/internal/firebase-auth-api/zzgl;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzcz;
.source "com.google.firebase:firebase-auth@@22.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzgk;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzgk;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcz;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzgl;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzgk;

    .line 4
    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzgk;)Lcom/google/android/gms/internal/firebase-auth-api/zzgl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzgl;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzgl;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzgk;)V

    return-object v0
.end method
