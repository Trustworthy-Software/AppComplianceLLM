.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzach;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# static fields
.field private static zza:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzach;->zza:Ljava/lang/Boolean;

    return-void
.end method

.method public static zza(Landroid/content/Context;)Z
    .locals 2

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzach;->zza:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 3
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v0

    .line 4
    const v1, 0xbdfcb8

    invoke-virtual {v0, p0, v1}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    move-result p0

    .line 5
    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 6
    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzach;->zza:Ljava/lang/Boolean;

    .line 7
    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzach;->zza:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
