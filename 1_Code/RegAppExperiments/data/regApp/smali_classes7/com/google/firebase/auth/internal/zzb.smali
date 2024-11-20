.class public Lcom/google/firebase/auth/internal/zzb;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/auth/internal/zzb$zza;
    }
.end annotation


# static fields
.field private static final zza:Ljava/lang/String;

.field private static final zzb:Lcom/google/firebase/auth/internal/zzb;


# instance fields
.field private zzc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/google/firebase/auth/internal/zzb;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/auth/internal/zzb;->zza:Ljava/lang/String;

    .line 43
    new-instance v0, Lcom/google/firebase/auth/internal/zzb;

    invoke-direct {v0}, Lcom/google/firebase/auth/internal/zzb;-><init>()V

    sput-object v0, Lcom/google/firebase/auth/internal/zzb;->zzb:Lcom/google/firebase/auth/internal/zzb;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/firebase/auth/internal/zzb;
    .locals 1

    .line 41
    sget-object v0, Lcom/google/firebase/auth/internal/zzb;->zzb:Lcom/google/firebase/auth/internal/zzb;

    return-object v0
.end method

.method private final zza(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/internal/zzbx;Landroid/app/Activity;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseAuth;",
            "Lcom/google/firebase/auth/internal/zzbx;",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/firebase/auth/internal/zzb$zza;",
            ">;)V"
        }
    .end annotation

    .line 45
    if-nez p3, :cond_0

    .line 46
    new-instance p1, Lcom/google/firebase/auth/FirebaseAuthMissingActivityForRecaptchaException;

    invoke-direct {p1}, Lcom/google/firebase/auth/FirebaseAuthMissingActivityForRecaptchaException;-><init>()V

    invoke-virtual {p4, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 47
    return-void

    .line 48
    :cond_0
    nop

    .line 49
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    .line 50
    nop

    .line 51
    invoke-static {p2, p1}, Lcom/google/firebase/auth/internal/zzbe;->zza(Landroid/content/Context;Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 52
    nop

    .line 53
    nop

    .line 54
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    new-instance p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 56
    invoke-static {}, Lcom/google/firebase/auth/internal/zzan;->zza()Lcom/google/firebase/auth/internal/zzan;

    move-result-object v0

    .line 57
    invoke-virtual {v0, p3, p2}, Lcom/google/firebase/auth/internal/zzan;->zza(Landroid/app/Activity;Lcom/google/android/gms/tasks/TaskCompletionSource;)Z

    move-result v0

    .line 58
    if-nez v0, :cond_1

    .line 59
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 p2, 0x42a1

    const-string p3, "reCAPTCHA flow already in progress"

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 60
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzace;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p1

    .line 61
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    goto :goto_0

    .line 62
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzadm;

    invoke-direct {v0, p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzadm;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadm;->zza()V

    .line 63
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 64
    :goto_0
    new-instance p2, Lcom/google/firebase/auth/internal/zze;

    invoke-direct {p2, p0, p4}, Lcom/google/firebase/auth/internal/zze;-><init>(Lcom/google/firebase/auth/internal/zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 65
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p2, Lcom/google/firebase/auth/internal/zzc;

    invoke-direct {p2, p0, p4}, Lcom/google/firebase/auth/internal/zzc;-><init>(Lcom/google/firebase/auth/internal/zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 66
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 67
    return-void
.end method

.method static bridge synthetic zza(Lcom/google/firebase/auth/internal/zzb;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzb;->zzc:Ljava/lang/String;

    return-void
.end method

.method public static zza(Ljava/lang/Exception;)Z
    .locals 1

    .line 81
    instance-of v0, p0, Lcom/google/firebase/auth/FirebaseAuthMissingActivityForRecaptchaException;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/google/firebase/auth/FirebaseAuthException;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/firebase/auth/FirebaseAuthException;

    .line 82
    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseAuthException;->getErrorCode()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UNAUTHORIZED_DOMAIN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    nop

    .line 83
    const/4 p0, 0x0

    return p0

    .line 82
    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static bridge synthetic zzb()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/firebase/auth/internal/zzb;->zza:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;Landroid/app/Activity;ZZ)Lcom/google/android/gms/tasks/Task;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseAuth;",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "ZZ)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/internal/zzb$zza;",
            ">;"
        }
    .end annotation

    .line 1
    nop

    .line 2
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->getFirebaseAuthSettings()Lcom/google/firebase/auth/FirebaseAuthSettings;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/auth/internal/zzw;

    .line 3
    invoke-static {}, Lcom/google/firebase/auth/internal/zzbx;->zzc()Lcom/google/firebase/auth/internal/zzbx;

    move-result-object v5

    .line 4
    nop

    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzady;->zza(Lcom/google/firebase/FirebaseApp;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_5

    .line 6
    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzw;->zze()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 8
    :cond_0
    sget-object v1, Lcom/google/firebase/auth/internal/zzb;->zza:Ljava/lang/String;

    .line 9
    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzw;->zzc()Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "ForceRecaptchaFlow from phoneAuthOptions = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", ForceRecaptchaFlow from firebaseSettings = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzw;->zzc()Z

    move-result v0

    or-int/2addr p5, v0

    .line 12
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 13
    invoke-virtual {v5}, Lcom/google/firebase/auth/internal/zzbx;->zzb()Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    .line 14
    if-eqz v3, :cond_2

    .line 15
    invoke-virtual {v3}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 16
    new-instance p1, Lcom/google/firebase/auth/internal/zzb$zza;

    invoke-virtual {v3}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p1, p2, v2}, Lcom/google/firebase/auth/internal/zzb$zza;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 17
    :cond_1
    nop

    .line 18
    invoke-virtual {v3}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error in previous reCAPTCHA flow: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    const-string v2, "Continuing with application verification as normal"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :cond_2
    if-eqz p4, :cond_4

    if-nez p5, :cond_4

    .line 22
    nop

    .line 23
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4}, Lcom/google/android/play/core/integrity/IntegrityManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/integrity/IntegrityManager;

    move-result-object p4

    .line 24
    nop

    .line 25
    nop

    .line 26
    iget-object p5, p0, Lcom/google/firebase/auth/internal/zzb;->zzc:Ljava/lang/String;

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_3

    .line 27
    new-instance p5, Lcom/google/android/gms/internal/firebase-auth-api/zzafa;

    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzb;->zzc:Ljava/lang/String;

    invoke-direct {p5, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafa;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-static {p5}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p5

    goto :goto_0

    .line 29
    :cond_3
    nop

    .line 30
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->zza()Lcom/google/android/gms/tasks/Task;

    move-result-object p5

    .line 31
    nop

    .line 32
    :goto_0
    nop

    .line 33
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->zzf()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/firebase/auth/internal/zzd;

    invoke-direct {v2, p0, p2, p4}, Lcom/google/firebase/auth/internal/zzd;-><init>(Lcom/google/firebase/auth/internal/zzb;Ljava/lang/String;Lcom/google/android/play/core/integrity/IntegrityManager;)V

    .line 34
    invoke-virtual {p5, v1, v2}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 35
    new-instance p4, Lcom/google/firebase/auth/internal/zza;

    move-object v1, p4

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/auth/internal/zza;-><init>(Lcom/google/firebase/auth/internal/zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/internal/zzbx;Landroid/app/Activity;)V

    .line 36
    invoke-virtual {p2, p4}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 37
    goto :goto_1

    .line 38
    :cond_4
    invoke-direct {p0, p1, v5, p3, v0}, Lcom/google/firebase/auth/internal/zzb;->zza(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/internal/zzbx;Landroid/app/Activity;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 39
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 40
    return-object p1

    .line 7
    :cond_5
    :goto_2
    new-instance p1, Lcom/google/firebase/auth/internal/zzb$zza;

    invoke-direct {p1, v2, v2}, Lcom/google/firebase/auth/internal/zzb$zza;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/internal/zzbx;Landroid/app/Activity;Lcom/google/android/gms/tasks/Task;)V
    .locals 3

    .line 68
    nop

    .line 69
    invoke-virtual {p5}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p5}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p5}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/integrity/IntegrityTokenResponse;

    invoke-virtual {v0}, Lcom/google/android/play/core/integrity/IntegrityTokenResponse;->token()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 72
    :goto_0
    if-eqz v0, :cond_1

    .line 73
    new-instance p2, Lcom/google/firebase/auth/internal/zzb$zza;

    .line 74
    invoke-virtual {p5}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/play/core/integrity/IntegrityTokenResponse;

    invoke-virtual {p3}, Lcom/google/android/play/core/integrity/IntegrityTokenResponse;->token()Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    invoke-direct {p2, p4, p3}, Lcom/google/firebase/auth/internal/zzb$zza;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 76
    return-void

    .line 77
    :cond_1
    invoke-virtual {p5}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p5, ""

    goto :goto_1

    :cond_2
    invoke-virtual {p5}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p5

    .line 78
    :goto_1
    sget-object v0, Lcom/google/firebase/auth/internal/zzb;->zza:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Play Integrity Token fetch failed, falling back to Recaptcha"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v0, p5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-direct {p0, p2, p3, p4, p1}, Lcom/google/firebase/auth/internal/zzb;->zza(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/internal/zzbx;Landroid/app/Activity;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 80
    return-void
.end method
