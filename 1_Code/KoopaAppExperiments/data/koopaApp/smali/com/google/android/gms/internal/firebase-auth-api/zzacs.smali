.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzacs;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# instance fields
.field private zza:Landroid/content/Context;

.field private zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzadk;

.field private zzc:Ljava/lang/String;

.field private final zzd:Lcom/google/firebase/FirebaseApp;

.field private zze:Z

.field private zzf:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacs;->zze:Z

    .line 29
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacs;->zza:Landroid/content/Context;

    .line 30
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/FirebaseApp;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacs;->zzd:Lcom/google/firebase/FirebaseApp;

    .line 31
    const-string p1, "Fallback"

    filled-new-array {p1, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 32
    const-string p2, "Android/%s/%s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacs;->zzc:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)V
    .locals 1

    .line 25
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacs;-><init>(Landroid/content/Context;Lcom/google/firebase/FirebaseApp;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method private static zza(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "LocalRequestInterceptor"

    .line 2
    invoke-static {p0}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseAuth;->zzc()Lcom/google/firebase/inject/Provider;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/appcheck/interop/InteropAppCheckTokenProvider;

    .line 4
    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 5
    return-object v1

    .line 6
    :cond_0
    nop

    .line 7
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p0, v2}, Lcom/google/firebase/appcheck/interop/InteropAppCheckTokenProvider;->getToken(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/appcheck/AppCheckTokenResult;

    .line 8
    invoke-virtual {p0}, Lcom/google/firebase/appcheck/AppCheckTokenResult;->getError()Ljava/lang/Exception;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 9
    nop

    .line 10
    invoke-virtual {p0}, Lcom/google/firebase/appcheck/AppCheckTokenResult;->getError()Ljava/lang/Exception;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error getting App Check token; using placeholder token instead. Error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/google/firebase/appcheck/AppCheckTokenResult;->getToken()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 13
    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 14
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected error getting App Check token: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    return-object v1
.end method

.method private static zzb(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;
    .locals 3

    .line 16
    invoke-static {p0}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object p0

    .line 17
    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseAuth;->zzd()Lcom/google/firebase/inject/Provider;

    move-result-object p0

    .line 18
    invoke-interface {p0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/heartbeatinfo/HeartBeatController;

    .line 19
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 20
    :try_start_0
    invoke-interface {p0}, Lcom/google/firebase/heartbeatinfo/HeartBeatController;->getHeartBeatsHeader()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 21
    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 22
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to get heartbeats: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "LocalRequestInterceptor"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return-object v0

    .line 24
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacs;->zze:Z

    .line 60
    return-void
.end method

.method public final zza(Ljava/net/URLConnection;)V
    .locals 3

    .line 34
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacs;->zze:Z

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacs;->zzc:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/FirebaseUI-Android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacs;->zzc:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/FirebaseCore-Android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacs;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzadk;

    if-nez v1, :cond_1

    .line 38
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzadk;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacs;->zza:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzadk;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacs;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzadk;

    .line 39
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacs;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzadk;

    .line 40
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadk;->zzb()Ljava/lang/String;

    move-result-object v1

    .line 41
    const-string v2, "X-Android-Package"

    invoke-virtual {p1, v2, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacs;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzadk;

    .line 43
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadk;->zza()Ljava/lang/String;

    move-result-object v1

    .line 44
    const-string v2, "X-Android-Cert"

    invoke-virtual {p1, v2, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    nop

    .line 46
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzacr;->zza()Ljava/lang/String;

    move-result-object v1

    .line 47
    const-string v2, "Accept-Language"

    invoke-virtual {p1, v2, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v1, "X-Client-Version"

    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v0, "X-Firebase-Locale"

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacs;->zzf:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacs;->zzd:Lcom/google/firebase/FirebaseApp;

    .line 51
    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lcom/google/firebase/FirebaseOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseOptions;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 52
    const-string v1, "X-Firebase-GMPID"

    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacs;->zzd:Lcom/google/firebase/FirebaseApp;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacs;->zzb(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "X-Firebase-Client"

    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacs;->zzd:Lcom/google/firebase/FirebaseApp;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacs;->zza(Lcom/google/firebase/FirebaseApp;)Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 56
    const-string v1, "X-Firebase-AppCheck"

    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacs;->zzf:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public final zzb(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacs;->zzf:Ljava/lang/String;

    .line 62
    return-void
.end method
