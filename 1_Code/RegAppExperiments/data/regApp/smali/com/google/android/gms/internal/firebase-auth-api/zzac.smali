.class final Lcom/google/android/gms/internal/firebase-auth-api/zzac;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzah;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/firebase-auth-api/zzs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzs;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzac;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzab;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 2

    .line 1
    nop

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzac;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzs;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzs;->zza(Ljava/lang/CharSequence;)Lcom/google/android/gms/internal/firebase-auth-api/zzp;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzaf;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaf;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzac;Lcom/google/android/gms/internal/firebase-auth-api/zzab;Ljava/lang/CharSequence;Lcom/google/android/gms/internal/firebase-auth-api/zzp;)V

    .line 4
    return-object v1
.end method
