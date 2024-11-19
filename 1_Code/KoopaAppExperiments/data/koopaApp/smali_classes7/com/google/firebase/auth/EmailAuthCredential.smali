.class public Lcom/google/firebase/auth/EmailAuthCredential;
.super Lcom/google/firebase/auth/AuthCredential;
.source "com.google.firebase:firebase-auth@@22.2.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/auth/EmailAuthCredential;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;

.field private zzd:Ljava/lang/String;

.field private zze:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/google/firebase/auth/zzg;

    invoke-direct {v0}, Lcom/google/firebase/auth/zzg;-><init>()V

    sput-object v0, Lcom/google/firebase/auth/EmailAuthCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 14
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/auth/EmailAuthCredential;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 15
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/google/firebase/auth/AuthCredential;-><init>()V

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/EmailAuthCredential;->zza:Ljava/lang/String;

    .line 18
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot create an EmailAuthCredential without a password or emailLink."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/google/firebase/auth/EmailAuthCredential;->zzb:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/google/firebase/auth/EmailAuthCredential;->zzc:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/google/firebase/auth/EmailAuthCredential;->zzd:Ljava/lang/String;

    .line 23
    iput-boolean p5, p0, Lcom/google/firebase/auth/EmailAuthCredential;->zze:Z

    .line 24
    return-void
.end method

.method public static zza(Ljava/lang/String;)Z
    .locals 2

    .line 50
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 51
    return v1

    .line 52
    :cond_0
    invoke-static {p0}, Lcom/google/firebase/auth/ActionCodeUrl;->parseLink(Ljava/lang/String;)Lcom/google/firebase/auth/ActionCodeUrl;

    move-result-object p0

    .line 53
    if-eqz p0, :cond_1

    .line 54
    invoke-virtual {p0}, Lcom/google/firebase/auth/ActionCodeUrl;->getOperation()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    nop

    .line 55
    return v1
.end method


# virtual methods
.method public getProvider()Ljava/lang/String;
    .locals 1

    .line 8
    const-string v0, "password"

    return-object v0
.end method

.method public getSignInMethod()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/firebase/auth/EmailAuthCredential;->zzb:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    const-string v0, "password"

    return-object v0

    .line 12
    :cond_0
    const-string v0, "emailLink"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 25
    nop

    .line 26
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 27
    nop

    .line 28
    iget-object v0, p0, Lcom/google/firebase/auth/EmailAuthCredential;->zza:Ljava/lang/String;

    .line 29
    nop

    .line 30
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 31
    nop

    .line 32
    iget-object v0, p0, Lcom/google/firebase/auth/EmailAuthCredential;->zzb:Ljava/lang/String;

    .line 33
    nop

    .line 34
    const/4 v1, 0x2

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 35
    nop

    .line 36
    iget-object v0, p0, Lcom/google/firebase/auth/EmailAuthCredential;->zzc:Ljava/lang/String;

    .line 37
    nop

    .line 38
    const/4 v1, 0x3

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 39
    nop

    .line 40
    iget-object v0, p0, Lcom/google/firebase/auth/EmailAuthCredential;->zzd:Ljava/lang/String;

    .line 41
    nop

    .line 42
    const/4 v1, 0x4

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 43
    nop

    .line 44
    iget-boolean v0, p0, Lcom/google/firebase/auth/EmailAuthCredential;->zze:Z

    .line 45
    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 46
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 47
    return-void
.end method

.method public final zza()Lcom/google/firebase/auth/AuthCredential;
    .locals 7

    .line 1
    new-instance v6, Lcom/google/firebase/auth/EmailAuthCredential;

    iget-object v1, p0, Lcom/google/firebase/auth/EmailAuthCredential;->zza:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/auth/EmailAuthCredential;->zzb:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/auth/EmailAuthCredential;->zzc:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/firebase/auth/EmailAuthCredential;->zzd:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/firebase/auth/EmailAuthCredential;->zze:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/auth/EmailAuthCredential;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v6
.end method

.method public final zza(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/firebase/auth/EmailAuthCredential;
    .locals 0

    .line 2
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->zze()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/EmailAuthCredential;->zzd:Ljava/lang/String;

    .line 3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/firebase/auth/EmailAuthCredential;->zze:Z

    .line 4
    return-object p0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/firebase/auth/EmailAuthCredential;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/firebase/auth/EmailAuthCredential;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/firebase/auth/EmailAuthCredential;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zze()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/firebase/auth/EmailAuthCredential;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public final zzf()Z
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/google/firebase/auth/EmailAuthCredential;->zzc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzg()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/google/firebase/auth/EmailAuthCredential;->zze:Z

    return v0
.end method
