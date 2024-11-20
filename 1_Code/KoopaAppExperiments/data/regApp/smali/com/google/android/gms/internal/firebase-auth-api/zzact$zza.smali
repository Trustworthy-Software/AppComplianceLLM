.class Lcom/google/android/gms/internal/firebase-auth-api/zzact$zza;
.super Lcom/google/android/gms/common/api/internal/LifecycleCallback;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase-auth-api/zzact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation


# instance fields
.field private final zza:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/LifecycleFragment;",
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;-><init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzact$zza;->mLifecycleFragment:Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    const-string v0, "PhoneAuthActivityStopCallback"

    invoke-interface {p1, v0, p0}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->addCallback(Ljava/lang/String;Lcom/google/android/gms/common/api/internal/LifecycleCallback;)V

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzact$zza;->zza:Ljava/util/List;

    .line 4
    return-void
.end method

.method public static zza(Landroid/app/Activity;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzact$zza;->getFragment(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    move-result-object p0

    .line 6
    const-string v0, "PhoneAuthActivityStopCallback"

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/zzact$zza;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->getCallbackOrNull(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzact$zza;

    .line 7
    if-nez v0, :cond_0

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzact$zza;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact$zza;-><init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;Ljava/util/List;)V

    .line 9
    :cond_0
    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzact$zza;->zza:Ljava/util/List;

    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzact$zza;->zza:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 12
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
