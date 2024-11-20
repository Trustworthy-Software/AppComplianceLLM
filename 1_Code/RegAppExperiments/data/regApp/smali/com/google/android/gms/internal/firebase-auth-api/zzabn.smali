.class final Lcom/google/android/gms/internal/firebase-auth-api/zzabn;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzact;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzact<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzafz;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzx:Lcom/google/android/gms/internal/firebase-auth-api/zzagc;


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/internal/zzag;Ljava/lang/String;)V
    .locals 1

    .line 2
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;-><init>(I)V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    nop

    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/zzag;->zzb()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzagc;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzagc;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabn;->zzx:Lcom/google/android/gms/internal/firebase-auth-api/zzagc;

    .line 7
    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "startMfaEnrollment"

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/firebase-auth-api/zzacb;)V
    .locals 1

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzadd;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadd;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzact;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzacu;

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabn;->zzx:Lcom/google/android/gms/internal/firebase-auth-api/zzagc;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabn;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzacv;

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzagc;Lcom/google/android/gms/internal/firebase-auth-api/zzabz;)V

    .line 13
    return-void
.end method

.method public final zzb()V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabn;->zzv:Lcom/google/android/gms/internal/firebase-auth-api/zzafz;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zzb(Ljava/lang/Object;)V

    .line 9
    return-void
.end method
