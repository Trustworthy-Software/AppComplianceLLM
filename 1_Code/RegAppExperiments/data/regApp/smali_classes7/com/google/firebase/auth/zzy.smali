.class final Lcom/google/firebase/auth/zzy;
.super Lcom/google/firebase/auth/internal/zzbi;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/auth/internal/zzbi<",
        "Lcom/google/firebase/auth/AuthResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Ljava/lang/String;

.field private final synthetic zzb:Z

.field private final synthetic zzc:Lcom/google/firebase/auth/FirebaseUser;

.field private final synthetic zzd:Ljava/lang/String;

.field private final synthetic zze:Ljava/lang/String;

.field private final synthetic zzf:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;ZLcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/google/firebase/auth/zzy;->zzf:Lcom/google/firebase/auth/FirebaseAuth;

    iput-object p2, p0, Lcom/google/firebase/auth/zzy;->zza:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/firebase/auth/zzy;->zzb:Z

    iput-object p4, p0, Lcom/google/firebase/auth/zzy;->zzc:Lcom/google/firebase/auth/FirebaseUser;

    iput-object p5, p0, Lcom/google/firebase/auth/zzy;->zzd:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/firebase/auth/zzy;->zze:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/firebase/auth/internal/zzbi;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "FirebaseAuth"

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/zzy;->zza:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Logging in as "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " with empty reCAPTCHA token"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/auth/zzy;->zza:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Got reCAPTCHA token for login with email "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :goto_0
    iget-boolean v0, p0, Lcom/google/firebase/auth/zzy;->zzb:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/google/firebase/auth/zzy;->zzf:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-static {v0}, Lcom/google/firebase/auth/FirebaseAuth;->zzc(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/android/gms/internal/firebase-auth-api/zzaag;

    move-result-object v1

    iget-object v0, p0, Lcom/google/firebase/auth/zzy;->zzf:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-static {v0}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/FirebaseApp;

    move-result-object v2

    iget-object v0, p0, Lcom/google/firebase/auth/zzy;->zzc:Lcom/google/firebase/auth/FirebaseUser;

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/firebase/auth/FirebaseUser;

    iget-object v4, p0, Lcom/google/firebase/auth/zzy;->zza:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/firebase/auth/zzy;->zzd:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/firebase/auth/zzy;->zze:Ljava/lang/String;

    new-instance v8, Lcom/google/firebase/auth/FirebaseAuth$zzb;

    iget-object v0, p0, Lcom/google/firebase/auth/zzy;->zzf:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-direct {v8, v0}, Lcom/google/firebase/auth/FirebaseAuth$zzb;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 7
    move-object v7, p1

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzaag;->zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzbv;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/auth/zzy;->zzf:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-static {v0}, Lcom/google/firebase/auth/FirebaseAuth;->zzc(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/android/gms/internal/firebase-auth-api/zzaag;

    move-result-object v1

    iget-object v0, p0, Lcom/google/firebase/auth/zzy;->zzf:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-static {v0}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/FirebaseApp;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/auth/zzy;->zza:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/firebase/auth/zzy;->zzd:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/firebase/auth/zzy;->zze:Ljava/lang/String;

    new-instance v7, Lcom/google/firebase/auth/FirebaseAuth$zza;

    iget-object v0, p0, Lcom/google/firebase/auth/zzy;->zzf:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-direct {v7, v0}, Lcom/google/firebase/auth/FirebaseAuth$zza;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    move-object v6, p1

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzaag;->zzb(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzg;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
