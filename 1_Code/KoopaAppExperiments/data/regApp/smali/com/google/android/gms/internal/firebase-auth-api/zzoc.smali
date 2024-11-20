.class final Lcom/google/android/gms/internal/firebase-auth-api/zzoc;
.super Lcom/google/android/gms/internal/firebase-auth-api/zznz;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zznz<",
        "TParametersT;TSerializationT;>;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/firebase-auth-api/zzob;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzob;)V
    .locals 0

    .line 2
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzoc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzob;

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zznz;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzoe;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzch;)Lcom/google/android/gms/internal/firebase-auth-api/zzov;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParametersT;)TSerializationT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzoc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzob;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzob;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzch;)Lcom/google/android/gms/internal/firebase-auth-api/zzov;

    move-result-object p1

    return-object p1
.end method
