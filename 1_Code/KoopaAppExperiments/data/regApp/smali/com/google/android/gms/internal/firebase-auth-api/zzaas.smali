.class final Lcom/google/android/gms/internal/firebase-auth-api/zzaas;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzact;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzact<",
        "Lcom/google/firebase/auth/AuthResult;",
        "Lcom/google/firebase/auth/internal/zzg;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzx:Lcom/google/firebase/auth/EmailAuthCredential;


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/EmailAuthCredential;)V
    .locals 2

    .line 2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;-><init>(I)V

    .line 3
    const-string v0, "credential cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/auth/EmailAuthCredential;

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaas;->zzx:Lcom/google/firebase/auth/EmailAuthCredential;

    .line 4
    invoke-virtual {p1}, Lcom/google/firebase/auth/EmailAuthCredential;->zzc()Ljava/lang/String;

    move-result-object v0

    const-string v1, "email cannot be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/auth/EmailAuthCredential;->zzd()Ljava/lang/String;

    move-result-object p1

    const-string v0, "password cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "linkEmailAuthCredential"

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/firebase-auth-api/zzacb;)V
    .locals 3

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzadd;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadd;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzact;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzacu;

    .line 13
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaas;->zzx:Lcom/google/firebase/auth/EmailAuthCredential;

    .line 14
    invoke-virtual {p1}, Lcom/google/firebase/auth/EmailAuthCredential;->zzc()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaas;->zzx:Lcom/google/firebase/auth/EmailAuthCredential;

    .line 15
    invoke-virtual {v0}, Lcom/google/firebase/auth/EmailAuthCredential;->zzd()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaas;->zzd:Lcom/google/firebase/auth/FirebaseUser;

    .line 16
    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseUser;->zze()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaas;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzacv;

    .line 17
    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzabz;)V

    .line 18
    return-void
.end method

.method public final zzb()V
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaas;->zzc:Lcom/google/firebase/FirebaseApp;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaas;->zzk:Lcom/google/android/gms/internal/firebase-auth-api/zzaex;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaag;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/firebase-auth-api/zzaex;)Lcom/google/firebase/auth/internal/zzv;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaas;->zze:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/auth/internal/zzg;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaas;->zzj:Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    invoke-interface {v1, v2, v0}, Lcom/google/firebase/auth/internal/zzg;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafe;Lcom/google/firebase/auth/FirebaseUser;)V

    .line 9
    new-instance v1, Lcom/google/firebase/auth/internal/zzp;

    invoke-direct {v1, v0}, Lcom/google/firebase/auth/internal/zzp;-><init>(Lcom/google/firebase/auth/internal/zzv;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zzb(Ljava/lang/Object;)V

    .line 10
    return-void
.end method
