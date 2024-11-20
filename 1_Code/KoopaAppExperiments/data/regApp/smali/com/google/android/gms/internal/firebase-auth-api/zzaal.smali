.class final Lcom/google/android/gms/internal/firebase-auth-api/zzaal;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzact;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzact<",
        "Ljava/lang/Void;",
        "Lcom/google/firebase/auth/internal/zzg;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzaa:Ljava/lang/String;

.field private final zzx:Lcom/google/firebase/auth/MultiFactorAssertion;

.field private final zzy:Ljava/lang/String;

.field private final zzz:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/MultiFactorAssertion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;-><init>(I)V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/MultiFactorAssertion;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;->zzx:Lcom/google/firebase/auth/MultiFactorAssertion;

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;->zzy:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;->zzz:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;->zzaa:Ljava/lang/String;

    .line 7
    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "finalizeMfaEnrollment"

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/firebase-auth-api/zzacb;)V
    .locals 7

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzadd;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadd;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzact;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzacu;

    .line 15
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;->zzx:Lcom/google/firebase/auth/MultiFactorAssertion;

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;->zzy:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;->zzz:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;->zzaa:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzacv;

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zza(Lcom/google/firebase/auth/MultiFactorAssertion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzabz;)V

    .line 16
    return-void
.end method

.method public final zzb()V
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;->zzc:Lcom/google/firebase/FirebaseApp;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;->zzk:Lcom/google/android/gms/internal/firebase-auth-api/zzaex;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaag;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/firebase-auth-api/zzaex;)Lcom/google/firebase/auth/internal/zzv;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;->zze:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/auth/internal/zzg;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaal;->zzj:Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    invoke-interface {v1, v2, v0}, Lcom/google/firebase/auth/internal/zzg;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafe;Lcom/google/firebase/auth/FirebaseUser;)V

    .line 10
    nop

    .line 11
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zzb(Ljava/lang/Object;)V

    .line 12
    return-void
.end method
