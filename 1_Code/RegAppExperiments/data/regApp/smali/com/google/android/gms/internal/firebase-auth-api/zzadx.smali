.class final Lcom/google/android/gms/internal/firebase-auth-api/zzadx;
.super Landroid/content/BroadcastReceiver;
.source "com.google.firebase:firebase-auth@@22.2.0"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final synthetic zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzadt;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzadt;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadx;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzadt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadx;->zza:Ljava/lang/String;

    .line 3
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 4
    const-string v0, "com.google.android.gms.auth.api.phone.SMS_RETRIEVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    .line 6
    const-string v0, "com.google.android.gms.auth.api.phone.EXTRA_STATUS"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Status;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 8
    :pswitch_0
    const-string v0, "com.google.android.gms.auth.api.phone.EXTRA_SMS_MESSAGE"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadx;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzadt;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzadt;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadx;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzadw;

    .line 10
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zza()Lcom/google/android/gms/common/logging/Logger;

    move-result-object p2

    const-string v0, "Verification code received with no active retrieval session."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/common/logging/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzadw;->zze:Ljava/lang/String;

    .line 14
    iget-object p2, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzadw;->zze:Ljava/lang/String;

    if-nez p2, :cond_1

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zza()Lcom/google/android/gms/common/logging/Logger;

    move-result-object p2

    const-string v0, "Unable to extract verification code."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/common/logging/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-object p2, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzadw;->zzd:Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzag;->zzc(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 18
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadx;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzadt;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadx;->zza:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadt;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzadt;Ljava/lang/String;)V

    .line 19
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 20
    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
