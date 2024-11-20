.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzc;
.super Landroidx/core/content/ContextCompat;
.source "com.google.firebase:firebase-auth@@22.2.0"


# direct methods
.method public static zza(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zza;->zza()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    nop

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zza;->zza()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    nop

    .line 5
    const/4 v0, 0x2

    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 8
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method
