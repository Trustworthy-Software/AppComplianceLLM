.class final Lcom/google/firebase/auth/zzaa;
.super Lcom/google/firebase/auth/internal/zzbi;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/auth/internal/zzbi<",
        "Ljava/lang/Void;",
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

    .line 15
    iput-object p1, p0, Lcom/google/firebase/auth/zzaa;->zzd:Lcom/google/firebase/auth/FirebaseAuth;

    iput-boolean p2, p0, Lcom/google/firebase/auth/zzaa;->zza:Z

    iput-object p3, p0, Lcom/google/firebase/auth/zzaa;->zzb:Lcom/google/firebase/auth/FirebaseUser;

    iput-object p4, p0, Lcom/google/firebase/auth/zzaa;->zzc:Lcom/google/firebase/auth/EmailAuthCredential;

    invoke-direct {p0}, Lcom/google/firebase/auth/internal/zzbi;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/firebase/auth/zzaa;->zza:Z

    const-string v1, "FirebaseAuth"

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    const-string v0, " Email link reauth with empty reCAPTCHA token"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4
    :cond_0
    const-string v0, "Got reCAPTCHA token for reauth with email link"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/auth/zzaa;->zzd:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-static {v0}, Lcom/google/firebase/auth/FirebaseAuth;->zzc(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/android/gms/internal/firebase-auth-api/zzaag;

    move-result-object v1

    iget-object v0, p0, Lcom/google/firebase/auth/zzaa;->zzd:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-static {v0}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/FirebaseApp;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/auth/zzaa;->zzb:Lcom/google/firebase/auth/FirebaseUser;

    iget-object v4, p0, Lcom/google/firebase/auth/zzaa;->zzc:Lcom/google/firebase/auth/EmailAuthCredential;

    new-instance v6, Lcom/google/firebase/auth/FirebaseAuth$zzb;

    iget-object v0, p0, Lcom/google/firebase/auth/zzaa;->zzd:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-direct {v6, v0}, Lcom/google/firebase/auth/FirebaseAuth$zzb;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzaag;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/EmailAuthCredential;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzbv;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/auth/zzaa;->zzc:Lcom/google/firebase/auth/EmailAuthCredential;

    invoke-virtual {v0}, Lcom/google/firebase/auth/EmailAuthCredential;->zzc()Ljava/lang/String;

    move-result-object v5

    .line 7
    iget-object v0, p0, Lcom/google/firebase/auth/zzaa;->zzc:Lcom/google/firebase/auth/EmailAuthCredential;

    invoke-virtual {v0}, Lcom/google/firebase/auth/EmailAuthCredential;->zzd()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Reauthenticating "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with empty reCAPTCHA token"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 10
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Got reCAPTCHA token for reauth with "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :goto_1
    iget-object v1, p0, Lcom/google/firebase/auth/zzaa;->zzd:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-static {v1}, Lcom/google/firebase/auth/FirebaseAuth;->zzc(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/android/gms/internal/firebase-auth-api/zzaag;

    move-result-object v2

    iget-object v1, p0, Lcom/google/firebase/auth/zzaa;->zzd:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-static {v1}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/FirebaseApp;

    move-result-object v3

    iget-object v4, p0, Lcom/google/firebase/auth/zzaa;->zzb:Lcom/google/firebase/auth/FirebaseUser;

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/google/firebase/auth/zzaa;->zzb:Lcom/google/firebase/auth/FirebaseUser;

    .line 13
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->getTenantId()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lcom/google/firebase/auth/FirebaseAuth$zzb;

    iget-object v0, p0, Lcom/google/firebase/auth/zzaa;->zzd:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-direct {v9, v0}, Lcom/google/firebase/auth/FirebaseAuth$zzb;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 14
    move-object v8, p1

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzaag;->zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/internal/zzbv;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
