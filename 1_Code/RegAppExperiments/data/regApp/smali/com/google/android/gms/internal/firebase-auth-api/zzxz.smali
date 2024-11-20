.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzxz;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/firebase/auth/ActionCodeSettings;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxz;->zza:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxz;->zzb:Lcom/google/firebase/auth/ActionCodeSettings;

    .line 6
    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/firebase/auth/ActionCodeSettings;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxz;->zzb:Lcom/google/firebase/auth/ActionCodeSettings;

    return-object v0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzxz;->zza:Ljava/lang/String;

    return-object v0
.end method
