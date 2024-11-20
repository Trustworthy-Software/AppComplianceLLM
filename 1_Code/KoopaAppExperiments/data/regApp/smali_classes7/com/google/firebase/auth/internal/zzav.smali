.class final Lcom/google/firebase/auth/internal/zzav;
.super Landroid/content/BroadcastReceiver;
.source "com.google.firebase:firebase-auth@@22.2.0"


# instance fields
.field private final zza:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final synthetic zzc:Lcom/google/firebase/auth/internal/zzan;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/internal/zzan;Landroid/app/Activity;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzav;->zzc:Lcom/google/firebase/auth/internal/zzan;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzav;->zza:Ljava/lang/ref/WeakReference;

    .line 3
    iput-object p3, p0, Lcom/google/firebase/auth/internal/zzav;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 4
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzav;->zza:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 6
    if-nez v0, :cond_0

    .line 7
    const-string p2, "FederatedAuthReceiver"

    const-string v0, "Failed to unregister BroadcastReceiver because the Activity that launched this flow has been garbage collected; please do not finish() your Activity while performing a FederatedAuthProvider operation."

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object p2, p0, Lcom/google/firebase/auth/internal/zzav;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x445b

    const-string v2, "Activity that started the web operation is no longer alive; see logcat for details"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzace;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object v0

    .line 10
    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 11
    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzan;->zza(Landroid/content/Context;)V

    .line 12
    return-void

    .line 13
    :cond_0
    const-string v0, "com.google.firebase.auth.internal.OPERATION"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15
    const-string v1, "com.google.firebase.auth.internal.ACTION_SHOW_RECAPTCHA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzav;->zzc:Lcom/google/firebase/auth/internal/zzan;

    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzav;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v0, p2, v1, p1}, Lcom/google/firebase/auth/internal/zzan;->zza(Lcom/google/firebase/auth/internal/zzan;Landroid/content/Intent;Lcom/google/android/gms/tasks/TaskCompletionSource;Landroid/content/Context;)V

    return-void

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzav;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "WEB_CONTEXT_CANCELED:Unknown operation received ("

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 18
    invoke-static {p2}, Lcom/google/firebase/auth/internal/zzai;->zza(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p2

    .line 19
    invoke-static {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzace;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p2

    .line 20
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 21
    return-void

    :cond_2
    invoke-static {p2}, Lcom/google/firebase/auth/internal/zzby;->zzb(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 22
    invoke-static {p2}, Lcom/google/firebase/auth/internal/zzby;->zza(Landroid/content/Intent;)Lcom/google/android/gms/common/api/Status;

    move-result-object p2

    .line 23
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzav;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 24
    invoke-static {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzace;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object p2

    .line 25
    invoke-virtual {v0, p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 26
    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzan;->zza(Landroid/content/Context;)V

    .line 27
    return-void

    :cond_3
    const-string v0, "com.google.firebase.auth.internal.EXTRA_CANCELED"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 28
    iget-object p2, p0, Lcom/google/firebase/auth/internal/zzav;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 29
    const-string v0, "WEB_CONTEXT_CANCELED"

    invoke-static {v0}, Lcom/google/firebase/auth/internal/zzai;->zza(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 30
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzace;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object v0

    .line 31
    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 32
    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzan;->zza(Landroid/content/Context;)V

    .line 33
    :cond_4
    return-void
.end method
