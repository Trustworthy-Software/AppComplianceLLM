.class final Lcom/google/android/gms/internal/firebase-auth-api/zzaca;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzact;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzact<",
        "Ljava/lang/Void;",
        "Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzx:Lcom/google/android/gms/internal/firebase-auth-api/zzyb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzafq;)V
    .locals 1

    .line 2
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;-><init>(I)V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzyb;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyb;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzafq;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaca;->zzx:Lcom/google/android/gms/internal/firebase-auth-api/zzyb;

    .line 5
    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "verifyPhoneNumber"

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/firebase-auth-api/zzacb;)V
    .locals 1

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzadd;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadd;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzact;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzacu;

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaca;->zzx:Lcom/google/android/gms/internal/firebase-auth-api/zzyb;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaca;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzacv;

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzyb;Lcom/google/android/gms/internal/firebase-auth-api/zzabz;)V

    .line 10
    return-void
.end method

.method public final zzb()V
    .locals 0

    .line 6
    return-void
.end method
