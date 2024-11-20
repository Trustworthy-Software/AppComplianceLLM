.class final Lcom/google/android/gms/internal/firebase-auth-api/zzmw;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzmu;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzmu<",
        "TSerializationT;>;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/firebase-auth-api/zzmv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzxt;Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzmv;)V
    .locals 0

    .line 2
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzmw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzmv;

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzmu;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzxt;Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzmy;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzov;Lcom/google/android/gms/internal/firebase-auth-api/zzcs;)Lcom/google/android/gms/internal/firebase-auth-api/zzbt;
    .locals 1
    .param p2    # Lcom/google/android/gms/internal/firebase-auth-api/zzcs;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSerializationT;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzcs;",
            ")",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzbt;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzmw;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzmv;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzmv;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzov;Lcom/google/android/gms/internal/firebase-auth-api/zzcs;)Lcom/google/android/gms/internal/firebase-auth-api/zzbt;

    move-result-object p1

    return-object p1
.end method
