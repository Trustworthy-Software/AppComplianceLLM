.class public abstract Lcom/google/firebase/auth/internal/zzbi;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/recaptcha/RecaptchaAction;Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;Lcom/google/android/gms/tasks/Continuation;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19
    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    .line 21
    :cond_0
    invoke-virtual {p4}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p4

    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Exception;

    .line 22
    invoke-static {p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzace;->zzc(Ljava/lang/Exception;)Z

    move-result v0

    const-string v1, "RecaptchaCallWrapper"

    if-eqz v0, :cond_3

    .line 23
    const/4 p4, 0x4

    invoke-static {v1, p4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 24
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Falling back to recaptcha enterprise flow for action "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->zzb()Lcom/google/firebase/auth/internal/zzbn;

    move-result-object p4

    if-nez p4, :cond_2

    .line 26
    new-instance p4, Lcom/google/firebase/auth/internal/zzbn;

    .line 27
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-direct {p4, v0, p1}, Lcom/google/firebase/auth/internal/zzbn;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 28
    invoke-virtual {p1, p4}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lcom/google/firebase/auth/internal/zzbn;)V

    .line 29
    :cond_2
    nop

    .line 30
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->zzb()Lcom/google/firebase/auth/internal/zzbn;

    move-result-object p1

    .line 31
    invoke-static {p1, p0, p2, p3}, Lcom/google/firebase/auth/internal/zzbi;->zza(Lcom/google/firebase/auth/internal/zzbn;Lcom/google/android/recaptcha/RecaptchaAction;Ljava/lang/String;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0

    .line 32
    :cond_3
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 33
    invoke-virtual {p4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Initial task failed for action "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "with exception - "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 34
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-static {p4}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method private static zza(Lcom/google/firebase/auth/internal/zzbn;Lcom/google/android/recaptcha/RecaptchaAction;Ljava/lang/String;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/auth/internal/zzbn;",
            "Lcom/google/android/recaptcha/RecaptchaAction;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tasks/Continuation<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;"
        }
    .end annotation

    .line 1
    nop

    .line 2
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p2, v0, p1}, Lcom/google/firebase/auth/internal/zzbn;->zza(Ljava/lang/String;Ljava/lang/Boolean;Lcom/google/android/recaptcha/RecaptchaAction;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/google/firebase/auth/internal/zzbj;

    invoke-direct {v1, p2, p0, p1, p3}, Lcom/google/firebase/auth/internal/zzbj;-><init>(Ljava/lang/String;Lcom/google/firebase/auth/internal/zzbn;Lcom/google/android/recaptcha/RecaptchaAction;Lcom/google/android/gms/tasks/Continuation;)V

    .line 4
    nop

    .line 5
    invoke-virtual {v0, p3}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    .line 6
    invoke-virtual {p0, v1}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    .line 7
    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;Lcom/google/android/recaptcha/RecaptchaAction;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseAuth;",
            "Ljava/lang/String;",
            "Lcom/google/android/recaptcha/RecaptchaAction;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;"
        }
    .end annotation

    .line 8
    nop

    .line 9
    new-instance v0, Lcom/google/firebase/auth/internal/zzbk;

    invoke-direct {v0, p0}, Lcom/google/firebase/auth/internal/zzbk;-><init>(Lcom/google/firebase/auth/internal/zzbi;)V

    .line 10
    nop

    .line 11
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->zzb()Lcom/google/firebase/auth/internal/zzbn;

    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    invoke-virtual {v1, p4}, Lcom/google/firebase/auth/internal/zzbn;->zza(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 13
    invoke-static {v1, p3, p2, v0}, Lcom/google/firebase/auth/internal/zzbi;->zza(Lcom/google/firebase/auth/internal/zzbn;Lcom/google/android/recaptcha/RecaptchaAction;Ljava/lang/String;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 14
    :cond_0
    const/4 p4, 0x0

    invoke-virtual {p0, p4}, Lcom/google/firebase/auth/internal/zzbi;->zza(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p4

    .line 15
    nop

    .line 16
    new-instance v1, Lcom/google/firebase/auth/internal/zzbh;

    invoke-direct {v1, p3, p1, p2, v0}, Lcom/google/firebase/auth/internal/zzbh;-><init>(Lcom/google/android/recaptcha/RecaptchaAction;Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;Lcom/google/android/gms/tasks/Continuation;)V

    .line 17
    invoke-virtual {p4, v1}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 18
    return-object p1
.end method

.method public abstract zza(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "TT;>;"
        }
    .end annotation
.end method
