.class public Lcom/google/firebase/auth/zzf;
.super Lcom/google/firebase/auth/OAuthCredential;
.source "com.google.firebase:firebase-auth@@22.2.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/auth/zzf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzagj;

.field private final zze:Ljava/lang/String;

.field private final zzf:Ljava/lang/String;

.field private final zzg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcom/google/firebase/auth/zze;

    invoke-direct {v0}, Lcom/google/firebase/auth/zze;-><init>()V

    sput-object v0, Lcom/google/firebase/auth/zzf;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzagj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/google/firebase/auth/OAuthCredential;-><init>()V

    .line 36
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzag;->zzb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/zzf;->zza:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/google/firebase/auth/zzf;->zzb:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/google/firebase/auth/zzf;->zzc:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcom/google/firebase/auth/zzf;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzagj;

    .line 40
    iput-object p5, p0, Lcom/google/firebase/auth/zzf;->zze:Ljava/lang/String;

    .line 41
    iput-object p6, p0, Lcom/google/firebase/auth/zzf;->zzf:Ljava/lang/String;

    .line 42
    iput-object p7, p0, Lcom/google/firebase/auth/zzf;->zzg:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public static zza(Lcom/google/firebase/auth/zzf;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzagj;
    .locals 11

    .line 13
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    nop

    .line 15
    iget-object v0, p0, Lcom/google/firebase/auth/zzf;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzagj;

    .line 16
    nop

    .line 17
    if-eqz v0, :cond_0

    .line 18
    return-object v0

    .line 19
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;

    .line 20
    invoke-virtual {p0}, Lcom/google/firebase/auth/OAuthCredential;->getIdToken()Ljava/lang/String;

    move-result-object v2

    .line 21
    invoke-virtual {p0}, Lcom/google/firebase/auth/OAuthCredential;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    .line 22
    invoke-virtual {p0}, Lcom/google/firebase/auth/AuthCredential;->getProvider()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 23
    invoke-virtual {p0}, Lcom/google/firebase/auth/OAuthCredential;->getSecret()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 24
    iget-object v9, p0, Lcom/google/firebase/auth/zzf;->zze:Ljava/lang/String;

    .line 25
    nop

    .line 26
    iget-object v10, p0, Lcom/google/firebase/auth/zzf;->zzg:Ljava/lang/String;

    .line 27
    move-object v1, v0

    move-object v8, p1

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-object v0
.end method

.method public static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzagj;)Lcom/google/firebase/auth/zzf;
    .locals 9

    .line 2
    const-string v0, "Must specify a non-null webSignInCredential"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/google/firebase/auth/zzf;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v5, p0

    invoke-direct/range {v1 .. v8}, Lcom/google/firebase/auth/zzf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzagj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/zzf;
    .locals 1

    .line 4
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lcom/google/firebase/auth/zzf;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/zzf;

    move-result-object p0

    return-object p0
.end method

.method static zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/zzf;
    .locals 9

    .line 9
    const-string v0, "Must specify a non-empty providerId"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must specify an idToken or an accessToken."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_1
    :goto_0
    new-instance v8, Lcom/google/firebase/auth/zzf;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/auth/zzf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzagj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method public static zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/zzf;
    .locals 9

    .line 5
    const-string v0, "Must specify a non-empty providerId"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must specify an idToken or an accessToken."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_1
    :goto_0
    new-instance v8, Lcom/google/firebase/auth/zzf;

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/auth/zzf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzagj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/google/firebase/auth/zzf;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public getIdToken()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/firebase/auth/zzf;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/google/firebase/auth/zzf;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public getSecret()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/google/firebase/auth/zzf;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public getSignInMethod()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/google/firebase/auth/zzf;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 44
    nop

    .line 45
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 46
    nop

    .line 47
    invoke-virtual {p0}, Lcom/google/firebase/auth/AuthCredential;->getProvider()Ljava/lang/String;

    move-result-object v1

    .line 48
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 49
    nop

    .line 50
    invoke-virtual {p0}, Lcom/google/firebase/auth/OAuthCredential;->getIdToken()Ljava/lang/String;

    move-result-object v1

    .line 51
    const/4 v2, 0x2

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 52
    nop

    .line 53
    invoke-virtual {p0}, Lcom/google/firebase/auth/OAuthCredential;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    .line 54
    const/4 v2, 0x3

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 55
    nop

    .line 56
    iget-object v1, p0, Lcom/google/firebase/auth/zzf;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzagj;

    .line 57
    nop

    .line 58
    const/4 v2, 0x4

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 59
    nop

    .line 60
    iget-object p2, p0, Lcom/google/firebase/auth/zzf;->zze:Ljava/lang/String;

    .line 61
    nop

    .line 62
    const/4 v1, 0x5

    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 63
    nop

    .line 64
    invoke-virtual {p0}, Lcom/google/firebase/auth/OAuthCredential;->getSecret()Ljava/lang/String;

    move-result-object p2

    .line 65
    const/4 v1, 0x6

    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 66
    nop

    .line 67
    iget-object p2, p0, Lcom/google/firebase/auth/zzf;->zzg:Ljava/lang/String;

    .line 68
    nop

    .line 69
    const/4 v1, 0x7

    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 70
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 71
    return-void
.end method

.method public final zza()Lcom/google/firebase/auth/AuthCredential;
    .locals 9

    .line 1
    new-instance v8, Lcom/google/firebase/auth/zzf;

    iget-object v1, p0, Lcom/google/firebase/auth/zzf;->zza:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/auth/zzf;->zzb:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/auth/zzf;->zzc:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/firebase/auth/zzf;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzagj;

    iget-object v5, p0, Lcom/google/firebase/auth/zzf;->zze:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/firebase/auth/zzf;->zzf:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/firebase/auth/zzf;->zzg:Ljava/lang/String;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/auth/zzf;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzagj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method
