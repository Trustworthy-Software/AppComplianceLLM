.class final Lcom/google/android/gms/internal/firebase-auth-api/zzny;
.super Lcom/google/android/gms/internal/firebase-auth-api/zznv;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zznv<",
        "TSerializationT;>;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/firebase-auth-api/zznx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzxt;Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zznx;)V
    .locals 0

    .line 2
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzny;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zznx;

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zznv;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzxt;Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzoa;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzov;)Lcom/google/android/gms/internal/firebase-auth-api/zzch;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSerializationT;)",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzch;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzny;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zznx;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zznx;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzov;)Lcom/google/android/gms/internal/firebase-auth-api/zzch;

    move-result-object p1

    return-object p1
.end method
