.class final Lcom/google/android/gms/internal/firebase-auth-api/zzaa;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzah;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/firebase-auth-api/zzj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaa;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzab;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1

    .line 1
    nop

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzad;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzad;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzaa;Lcom/google/android/gms/internal/firebase-auth-api/zzab;Ljava/lang/CharSequence;)V

    .line 3
    return-object v0
.end method
