.class final Lcom/google/firebase/auth/internal/zzbq;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/Continuation<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzaff;",
        "Lcom/google/android/gms/tasks/Task<",
        "Lcom/google/android/recaptcha/RecaptchaTasksClient;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Ljava/lang/String;

.field private final synthetic zzb:Lcom/google/firebase/auth/internal/zzbn;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/internal/zzbn;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzbq;->zzb:Lcom/google/firebase/auth/internal/zzbn;

    iput-object p2, p0, Lcom/google/firebase/auth/internal/zzbq;->zza:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 5
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

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/google/firebase/auth/internal/zzbo;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lcom/google/firebase/auth/internal/zzbo;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaff;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaff;->zza()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzag;->zzc(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    new-instance p1, Lcom/google/firebase/auth/internal/zzbo;

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzbq;->zza:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No Recaptcha Enterprise siteKey configured for tenant/project "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/firebase/auth/internal/zzbo;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 10
    :cond_1
    nop

    .line 11
    nop

    .line 12
    const/16 v1, 0x2f

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzab;->zza(C)Lcom/google/android/gms/internal/firebase-auth-api/zzab;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzab;->zza(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v1

    .line 13
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    .line 14
    const/4 v1, 0x0

    goto :goto_0

    .line 15
    :cond_2
    const/4 v2, 0x3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 16
    :goto_0
    nop

    .line 17
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 18
    new-instance p1, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid siteKey format "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 19
    :cond_3
    const-string v0, "RecaptchaHandler"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 20
    iget-object v2, p0, Lcom/google/firebase/auth/internal/zzbq;->zza:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Successfully obtained site key for tenant "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :cond_4
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzbq;->zzb:Lcom/google/firebase/auth/internal/zzbn;

    invoke-static {v0, p1}, Lcom/google/firebase/auth/internal/zzbn;->zza(Lcom/google/firebase/auth/internal/zzbn;Lcom/google/android/gms/internal/firebase-auth-api/zzaff;)V

    .line 22
    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzbq;->zzb:Lcom/google/firebase/auth/internal/zzbn;

    iget-object p1, p1, Lcom/google/firebase/auth/internal/zzbn;->zzc:Lcom/google/firebase/auth/internal/zzbm;

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzbq;->zzb:Lcom/google/firebase/auth/internal/zzbn;

    iget-object v0, v0, Lcom/google/firebase/auth/internal/zzbn;->zzb:Lcom/google/firebase/FirebaseApp;

    .line 23
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 24
    invoke-interface {p1, v0, v1}, Lcom/google/firebase/auth/internal/zzbm;->zza(Landroid/app/Application;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 25
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzbq;->zzb:Lcom/google/firebase/auth/internal/zzbn;

    iget-object v0, v0, Lcom/google/firebase/auth/internal/zzbn;->zza:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzbq;->zza:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    nop

    .line 27
    return-object p1
.end method
