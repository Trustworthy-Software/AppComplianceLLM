.class final Lcom/google/firebase/auth/internal/zzbj;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/Continuation<",
        "TT;",
        "Lcom/google/android/gms/tasks/Task<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Ljava/lang/String;

.field private final synthetic zzb:Lcom/google/firebase/auth/internal/zzbn;

.field private final synthetic zzc:Lcom/google/android/recaptcha/RecaptchaAction;

.field private final synthetic zzd:Lcom/google/android/gms/tasks/Continuation;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/firebase/auth/internal/zzbn;Lcom/google/android/recaptcha/RecaptchaAction;Lcom/google/android/gms/tasks/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzbj;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/firebase/auth/internal/zzbj;->zzb:Lcom/google/firebase/auth/internal/zzbn;

    iput-object p3, p0, Lcom/google/firebase/auth/internal/zzbj;->zzc:Lcom/google/android/recaptcha/RecaptchaAction;

    iput-object p4, p0, Lcom/google/firebase/auth/internal/zzbj;->zzd:Lcom/google/android/gms/tasks/Continuation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    nop

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzace;->zzb(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    const/4 p1, 0x4

    const-string v0, "RecaptchaCallWrapper"

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzbj;->zza:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid token - Refreshing Recaptcha Enterprise config and fetching new token for tenant "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzbj;->zzb:Lcom/google/firebase/auth/internal/zzbn;

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzbj;->zza:Ljava/lang/String;

    .line 8
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/auth/internal/zzbj;->zzc:Lcom/google/android/recaptcha/RecaptchaAction;

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/firebase/auth/internal/zzbn;->zza(Ljava/lang/String;Ljava/lang/Boolean;Lcom/google/android/recaptcha/RecaptchaAction;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzbj;->zzd:Lcom/google/android/gms/tasks/Continuation;

    .line 9
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 10
    return-object p1

    .line 11
    :cond_1
    nop

    .line 12
    return-object p1
.end method
