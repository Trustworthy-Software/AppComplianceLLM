.class public final Lcom/google/firebase/auth/internal/zzan;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# static fields
.field private static zza:Lcom/google/firebase/auth/internal/zzan;


# instance fields
.field private zzb:Z

.field private zzc:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/auth/internal/zzan;->zzb:Z

    .line 37
    return-void
.end method

.method private static zza(Landroid/content/Intent;)Lcom/google/firebase/auth/AuthCredential;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 3
    const-string v1, "com.google.firebase.auth.internal.VERIFY_ASSERTION_REQUEST"

    invoke-static {p0, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelableSerializer;->deserializeFromIntentExtra(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;

    .line 4
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzc(Z)Lcom/google/android/gms/internal/firebase-auth-api/zzagj;

    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/google/firebase/auth/zzf;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzagj;)Lcom/google/firebase/auth/zzf;

    move-result-object p0

    return-object p0
.end method

.method public static zza()Lcom/google/firebase/auth/internal/zzan;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/firebase/auth/internal/zzan;->zza:Lcom/google/firebase/auth/internal/zzan;

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Lcom/google/firebase/auth/internal/zzan;

    invoke-direct {v0}, Lcom/google/firebase/auth/internal/zzan;-><init>()V

    sput-object v0, Lcom/google/firebase/auth/internal/zzan;->zza:Lcom/google/firebase/auth/internal/zzan;

    .line 8
    :cond_0
    sget-object v0, Lcom/google/firebase/auth/internal/zzan;->zza:Lcom/google/firebase/auth/internal/zzan;

    return-object v0
.end method

.method private final zza(Landroid/app/Activity;Landroid/content/BroadcastReceiver;)V
    .locals 2

    .line 43
    iput-object p2, p0, Lcom/google/firebase/auth/internal/zzan;->zzc:Landroid/content/BroadcastReceiver;

    .line 44
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.google.firebase.auth.ACTION_RECEIVE_FIREBASE_AUTH_INTENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1, p2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 46
    return-void
.end method

.method static zza(Landroid/content/Context;)V
    .locals 2

    .line 38
    sget-object v0, Lcom/google/firebase/auth/internal/zzan;->zza:Lcom/google/firebase/auth/internal/zzan;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/firebase/auth/internal/zzan;->zzb:Z

    .line 39
    iget-object v0, v0, Lcom/google/firebase/auth/internal/zzan;->zzc:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 40
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    sget-object v0, Lcom/google/firebase/auth/internal/zzan;->zza:Lcom/google/firebase/auth/internal/zzan;

    iget-object v0, v0, Lcom/google/firebase/auth/internal/zzan;->zzc:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 41
    :cond_0
    sget-object p0, Lcom/google/firebase/auth/internal/zzan;->zza:Lcom/google/firebase/auth/internal/zzan;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/auth/internal/zzan;->zzc:Landroid/content/BroadcastReceiver;

    .line 42
    return-void
.end method

.method static synthetic zza(Lcom/google/firebase/auth/internal/zzan;Landroid/content/Intent;Lcom/google/android/gms/tasks/TaskCompletionSource;Landroid/content/Context;)V
    .locals 0

    .line 23
    nop

    .line 24
    const-string p0, "com.google.firebase.auth.internal.RECAPTCHA_TOKEN"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 25
    invoke-virtual {p2, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 26
    invoke-static {p3}, Lcom/google/firebase/auth/internal/zzan;->zza(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method static synthetic zza(Lcom/google/firebase/auth/internal/zzan;Landroid/content/Intent;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/auth/FirebaseAuth;Landroid/content/Context;)V
    .locals 0

    .line 28
    nop

    .line 29
    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzan;->zza(Landroid/content/Intent;)Lcom/google/firebase/auth/AuthCredential;

    move-result-object p1

    .line 30
    invoke-virtual {p3, p1}, Lcom/google/firebase/auth/FirebaseAuth;->signInWithCredential(Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 31
    new-instance p3, Lcom/google/firebase/auth/internal/zzap;

    invoke-direct {p3, p0, p2, p4}, Lcom/google/firebase/auth/internal/zzap;-><init>(Lcom/google/firebase/auth/internal/zzan;Lcom/google/android/gms/tasks/TaskCompletionSource;Landroid/content/Context;)V

    .line 32
    invoke-virtual {p1, p3}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p3, Lcom/google/firebase/auth/internal/zzaq;

    invoke-direct {p3, p0, p2, p4}, Lcom/google/firebase/auth/internal/zzaq;-><init>(Lcom/google/firebase/auth/internal/zzan;Lcom/google/android/gms/tasks/TaskCompletionSource;Landroid/content/Context;)V

    .line 33
    invoke-virtual {p1, p3}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 34
    return-void
.end method

.method static synthetic zza(Lcom/google/firebase/auth/internal/zzan;Landroid/content/Intent;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/auth/FirebaseUser;Landroid/content/Context;)V
    .locals 0

    .line 9
    nop

    .line 10
    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzan;->zza(Landroid/content/Intent;)Lcom/google/firebase/auth/AuthCredential;

    move-result-object p1

    .line 11
    invoke-virtual {p3, p1}, Lcom/google/firebase/auth/FirebaseUser;->linkWithCredential(Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 12
    new-instance p3, Lcom/google/firebase/auth/internal/zzar;

    invoke-direct {p3, p0, p2, p4}, Lcom/google/firebase/auth/internal/zzar;-><init>(Lcom/google/firebase/auth/internal/zzan;Lcom/google/android/gms/tasks/TaskCompletionSource;Landroid/content/Context;)V

    .line 13
    invoke-virtual {p1, p3}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p3, Lcom/google/firebase/auth/internal/zzas;

    invoke-direct {p3, p0, p2, p4}, Lcom/google/firebase/auth/internal/zzas;-><init>(Lcom/google/firebase/auth/internal/zzan;Lcom/google/android/gms/tasks/TaskCompletionSource;Landroid/content/Context;)V

    .line 14
    invoke-virtual {p1, p3}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 15
    return-void
.end method

.method static synthetic zzb(Lcom/google/firebase/auth/internal/zzan;Landroid/content/Intent;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/auth/FirebaseUser;Landroid/content/Context;)V
    .locals 0

    .line 16
    nop

    .line 17
    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzan;->zza(Landroid/content/Intent;)Lcom/google/firebase/auth/AuthCredential;

    move-result-object p1

    .line 18
    invoke-virtual {p3, p1}, Lcom/google/firebase/auth/FirebaseUser;->reauthenticateAndRetrieveData(Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 19
    new-instance p3, Lcom/google/firebase/auth/internal/zzat;

    invoke-direct {p3, p0, p2, p4}, Lcom/google/firebase/auth/internal/zzat;-><init>(Lcom/google/firebase/auth/internal/zzan;Lcom/google/android/gms/tasks/TaskCompletionSource;Landroid/content/Context;)V

    .line 20
    invoke-virtual {p1, p3}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p3, Lcom/google/firebase/auth/internal/zzau;

    invoke-direct {p3, p0, p2, p4}, Lcom/google/firebase/auth/internal/zzau;-><init>(Lcom/google/firebase/auth/internal/zzan;Lcom/google/android/gms/tasks/TaskCompletionSource;Landroid/content/Context;)V

    .line 21
    invoke-virtual {p1, p3}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 22
    return-void
.end method


# virtual methods
.method public final zza(Landroid/app/Activity;Lcom/google/android/gms/tasks/TaskCompletionSource;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 53
    iget-boolean v0, p0, Lcom/google/firebase/auth/internal/zzan;->zzb:Z

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/google/firebase/auth/internal/zzav;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/auth/internal/zzav;-><init>(Lcom/google/firebase/auth/internal/zzan;Landroid/app/Activity;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/auth/internal/zzan;->zza(Landroid/app/Activity;Landroid/content/BroadcastReceiver;)V

    .line 55
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/firebase/auth/internal/zzan;->zzb:Z

    .line 56
    return p1

    .line 57
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zza(Landroid/app/Activity;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/auth/FirebaseAuth;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;",
            "Lcom/google/firebase/auth/FirebaseAuth;",
            ")Z"
        }
    .end annotation

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/firebase/auth/internal/zzan;->zza(Landroid/app/Activity;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;)Z

    move-result p1

    return p1
.end method

.method public final zza(Landroid/app/Activity;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;",
            "Lcom/google/firebase/auth/FirebaseAuth;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            ")Z"
        }
    .end annotation

    .line 48
    iget-boolean v0, p0, Lcom/google/firebase/auth/internal/zzan;->zzb:Z

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/google/firebase/auth/internal/zzaw;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/auth/internal/zzaw;-><init>(Lcom/google/firebase/auth/internal/zzan;Landroid/app/Activity;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;)V

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/auth/internal/zzan;->zza(Landroid/app/Activity;Landroid/content/BroadcastReceiver;)V

    .line 50
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/firebase/auth/internal/zzan;->zzb:Z

    .line 51
    return p1

    .line 52
    :cond_0
    const/4 p1, 0x0

    return p1
.end method
