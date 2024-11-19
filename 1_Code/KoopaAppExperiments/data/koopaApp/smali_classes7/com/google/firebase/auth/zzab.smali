.class final Lcom/google/firebase/auth/zzab;
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
.field private final synthetic zza:Z

.field private final synthetic zzb:Lcom/google/firebase/auth/FirebaseUser;

.field private final synthetic zzc:Lcom/google/firebase/auth/EmailAuthCredential;

.field private final synthetic zzd:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;ZLcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/EmailAuthCredential;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/google/firebase/auth/zzab;->zzd:Lcom/google/firebase/auth/FirebaseAuth;

    iput-boolean p2, p0, Lcom/google/firebase/auth/zzab;->zza:Z

    iput-object p3, p0, Lcom/google/firebase/auth/zzab;->zzb:Lcom/google/firebase/auth/FirebaseUser;

    iput-object p4, p0, Lcom/google/firebase/auth/zzab;->zzc:Lcom/google/firebase/auth/EmailAuthCredential;

    invoke-direct {p0}, Lcom/google/firebase/auth/internal/zzbi;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 7
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
    const-string v0, "Email link login/reauth with empty reCAPTCHA token"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :cond_0
    const-string v0, "Got reCAPTCHA token for login/reauth with email link"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :goto_0
    iget-boolean v0, p0, Lcom/google/firebase/auth/zzab;->zza:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/google/firebase/auth/zzab;->zzd:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-static {v0}, Lcom/google/firebase/auth/FirebaseAuth;->zzc(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/android/gms/internal/firebase-auth-api/zzaag;

    move-result-object v1

    iget-object v0, p0, Lcom/google/firebase/auth/zzab;->zzd:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-static {v0}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/FirebaseApp;

    move-result-object v2

    iget-object v0, p0, Lcom/google/firebase/auth/zzab;->zzb:Lcom/google/firebase/auth/FirebaseUser;

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/firebase/auth/FirebaseUser;

    iget-object v4, p0, Lcom/google/firebase/auth/zzab;->zzc:Lcom/google/firebase/auth/EmailAuthCredential;

    new-instance v6, Lcom/google/firebase/auth/FirebaseAuth$zzb;

    iget-object v0, p0, Lcom/google/firebase/auth/zzab;->zzd:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-direct {v6, v0}, Lcom/google/firebase/auth/FirebaseAuth$zzb;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 7
    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzaag;->zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/EmailAuthCredential;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzbv;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/auth/zzab;->zzd:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-static {v0}, Lcom/google/firebase/auth/FirebaseAuth;->zzc(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/android/gms/internal/firebase-auth-api/zzaag;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/auth/zzab;->zzd:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-static {v1}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/auth/zzab;->zzc:Lcom/google/firebase/auth/EmailAuthCredential;

    new-instance v3, Lcom/google/firebase/auth/FirebaseAuth$zza;

    iget-object v4, p0, Lcom/google/firebase/auth/zzab;->zzd:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-direct {v3, v4}, Lcom/google/firebase/auth/FirebaseAuth$zza;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzaag;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/EmailAuthCredential;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzg;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
