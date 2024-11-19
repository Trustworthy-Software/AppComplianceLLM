.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzcs;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzcs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzcs;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcs;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzcs;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zza()Lcom/google/android/gms/internal/firebase-auth-api/zzcs;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcs;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzcs;

    return-object v0
.end method

.method public static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcs;)Lcom/google/android/gms/internal/firebase-auth-api/zzcs;
    .locals 1
    .param p0    # Lcom/google/android/gms/internal/firebase-auth-api/zzcs;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2
    if-eqz p0, :cond_0

    .line 4
    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "SecretKeyAccess is required"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
