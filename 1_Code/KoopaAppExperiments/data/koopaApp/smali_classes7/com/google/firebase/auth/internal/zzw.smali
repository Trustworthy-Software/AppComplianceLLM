.class public final Lcom/google/firebase/auth/internal/zzw;
.super Lcom/google/firebase/auth/FirebaseAuthSettings;
.source "com.google.firebase:firebase-auth@@22.2.0"


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private zzc:Z

.field private zzd:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/google/firebase/auth/FirebaseAuthSettings;-><init>()V

    .line 4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/auth/internal/zzw;->zzc:Z

    .line 5
    iput-boolean v0, p0, Lcom/google/firebase/auth/internal/zzw;->zzd:Z

    .line 6
    return-void
.end method


# virtual methods
.method public final forceRecaptchaFlowForTesting(Z)V
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/google/firebase/auth/internal/zzw;->zzd:Z

    .line 8
    return-void
.end method

.method public final setAppVerificationDisabledForTesting(Z)V
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcom/google/firebase/auth/internal/zzw;->zzc:Z

    .line 10
    return-void
.end method

.method public final setAutoRetrievedSmsCodeForPhoneNumber(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzw;->zza:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/google/firebase/auth/internal/zzw;->zzb:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public final zza()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzw;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzw;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/google/firebase/auth/internal/zzw;->zzd:Z

    return v0
.end method

.method public final zzd()Z
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzw;->zza:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzw;->zzb:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zze()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/google/firebase/auth/internal/zzw;->zzc:Z

    return v0
.end method
