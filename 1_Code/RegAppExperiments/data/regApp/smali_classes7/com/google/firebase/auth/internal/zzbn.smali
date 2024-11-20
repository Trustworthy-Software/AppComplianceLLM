.class public final Lcom/google/firebase/auth/internal/zzbn;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# instance fields
.field zza:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/recaptcha/RecaptchaTasksClient;",
            ">;>;"
        }
    .end annotation
.end field

.field zzb:Lcom/google/firebase/FirebaseApp;

.field zzc:Lcom/google/firebase/auth/internal/zzbm;

.field private zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzaff;

.field private zze:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method public constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseAuth;)V
    .locals 1

    .line 25
    new-instance v0, Lcom/google/firebase/auth/internal/zzbl;

    invoke-direct {v0}, Lcom/google/firebase/auth/internal/zzbl;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/firebase/auth/internal/zzbn;-><init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/internal/zzbm;)V

    .line 26
    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/internal/zzbm;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/auth/internal/zzbn;->zza:Ljava/util/Map;

    .line 29
    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzbn;->zzb:Lcom/google/firebase/FirebaseApp;

    .line 30
    iput-object p2, p0, Lcom/google/firebase/auth/internal/zzbn;->zze:Lcom/google/firebase/auth/FirebaseAuth;

    .line 31
    iput-object p3, p0, Lcom/google/firebase/auth/internal/zzbn;->zzc:Lcom/google/firebase/auth/internal/zzbm;

    .line 32
    return-void
.end method

.method private static zza()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/auth/internal/zzbs;
        }
    .end annotation

    .line 33
    nop

    .line 35
    return-void
.end method

.method static bridge synthetic zza(Lcom/google/firebase/auth/internal/zzbn;Lcom/google/android/gms/internal/firebase-auth-api/zzaff;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzbn;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzaff;

    return-void
.end method

.method private final zzb(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/recaptcha/RecaptchaTasksClient;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzbn;->zza:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/tasks/Task;

    return-object p1
.end method

.method private static zzc(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 22
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzag;->zzc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    const-string p0, "*"

    return-object p0

    .line 24
    :cond_0
    return-object p0
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/recaptcha/RecaptchaTasksClient;",
            ">;"
        }
    .end annotation

    .line 10
    :try_start_0
    invoke-static {}, Lcom/google/firebase/auth/internal/zzbn;->zza()V
    :try_end_0
    .catch Lcom/google/firebase/auth/internal/zzbs; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    nop

    .line 13
    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzbn;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firebase/auth/internal/zzbn;->zzb(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 16
    if-eqz p2, :cond_0

    .line 17
    return-object p2

    .line 18
    :cond_0
    iget-object p2, p0, Lcom/google/firebase/auth/internal/zzbn;->zze:Lcom/google/firebase/auth/FirebaseAuth;

    .line 19
    const-string v0, "RECAPTCHA_ENTERPRISE"

    invoke-virtual {p2, v0}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    new-instance v0, Lcom/google/firebase/auth/internal/zzbq;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/auth/internal/zzbq;-><init>(Lcom/google/firebase/auth/internal/zzbn;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 21
    return-object p1

    .line 12
    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/Boolean;Lcom/google/android/recaptcha/RecaptchaAction;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lcom/google/android/recaptcha/RecaptchaAction;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    :try_start_0
    invoke-static {}, Lcom/google/firebase/auth/internal/zzbn;->zza()V
    :try_end_0
    .catch Lcom/google/firebase/auth/internal/zzbs; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    nop

    .line 5
    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzbn;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-direct {p0, p1}, Lcom/google/firebase/auth/internal/zzbn;->zzb(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 7
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/auth/internal/zzbn;->zza(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 9
    :cond_1
    new-instance p1, Lcom/google/firebase/auth/internal/zzbp;

    invoke-direct {p1, p0, p3}, Lcom/google/firebase/auth/internal/zzbp;-><init>(Lcom/google/firebase/auth/internal/zzbn;Lcom/google/android/recaptcha/RecaptchaAction;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 4
    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/lang/String;)Z
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzbn;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzaff;

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaff;->zzb(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    nop

    .line 38
    const/4 p1, 0x0

    return p1
.end method
