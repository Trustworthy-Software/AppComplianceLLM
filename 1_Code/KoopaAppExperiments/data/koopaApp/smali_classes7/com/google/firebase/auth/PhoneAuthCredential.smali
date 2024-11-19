.class public Lcom/google/firebase/auth/PhoneAuthCredential;
.super Lcom/google/firebase/auth/AuthCredential;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/auth/PhoneAuthCredential;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private zzc:Ljava/lang/String;

.field private zzd:Z

.field private zze:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/google/firebase/auth/zzan;

    invoke-direct {v0}, Lcom/google/firebase/auth/zzan;-><init>()V

    sput-object v0, Lcom/google/firebase/auth/PhoneAuthCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    .line 25
    invoke-direct {p0}, Lcom/google/firebase/auth/AuthCredential;-><init>()V

    .line 26
    nop

    .line 27
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 29
    :goto_0
    const-string v1, "Cannot create PhoneAuthCredential without either sessionInfo + smsCode or temporary proof + phoneNumber."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 30
    iput-object p1, p0, Lcom/google/firebase/auth/PhoneAuthCredential;->zza:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/google/firebase/auth/PhoneAuthCredential;->zzb:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/google/firebase/auth/PhoneAuthCredential;->zzc:Ljava/lang/String;

    .line 33
    iput-boolean p4, p0, Lcom/google/firebase/auth/PhoneAuthCredential;->zzd:Z

    .line 34
    iput-object p5, p0, Lcom/google/firebase/auth/PhoneAuthCredential;->zze:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public static zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/PhoneAuthCredential;
    .locals 7

    .line 2
    new-instance v6, Lcom/google/firebase/auth/PhoneAuthCredential;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/auth/PhoneAuthCredential;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-object v6
.end method

.method public static zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/PhoneAuthCredential;
    .locals 7

    .line 3
    new-instance v6, Lcom/google/firebase/auth/PhoneAuthCredential;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object v0, v6

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/auth/PhoneAuthCredential;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-object v6
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 6
    nop

    .line 7
    new-instance v6, Lcom/google/firebase/auth/PhoneAuthCredential;

    .line 8
    iget-object v1, p0, Lcom/google/firebase/auth/PhoneAuthCredential;->zza:Ljava/lang/String;

    .line 9
    nop

    .line 10
    invoke-virtual {p0}, Lcom/google/firebase/auth/PhoneAuthCredential;->getSmsCode()Ljava/lang/String;

    move-result-object v2

    .line 11
    iget-object v3, p0, Lcom/google/firebase/auth/PhoneAuthCredential;->zzc:Ljava/lang/String;

    .line 12
    nop

    .line 13
    iget-boolean v4, p0, Lcom/google/firebase/auth/PhoneAuthCredential;->zzd:Z

    .line 14
    nop

    .line 15
    iget-object v5, p0, Lcom/google/firebase/auth/PhoneAuthCredential;->zze:Ljava/lang/String;

    .line 16
    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/auth/PhoneAuthCredential;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 17
    return-object v6
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .line 19
    const-string v0, "phone"

    return-object v0
.end method

.method public getSignInMethod()Ljava/lang/String;
    .locals 1

    .line 21
    const-string v0, "phone"

    return-object v0
.end method

.method public getSmsCode()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthCredential;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 36
    nop

    .line 37
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 38
    nop

    .line 39
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthCredential;->zza:Ljava/lang/String;

    .line 40
    nop

    .line 41
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 42
    nop

    .line 43
    invoke-virtual {p0}, Lcom/google/firebase/auth/PhoneAuthCredential;->getSmsCode()Ljava/lang/String;

    move-result-object v0

    .line 44
    const/4 v1, 0x2

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 45
    nop

    .line 46
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthCredential;->zzc:Ljava/lang/String;

    .line 47
    nop

    .line 48
    const/4 v1, 0x4

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 49
    nop

    .line 50
    iget-boolean v0, p0, Lcom/google/firebase/auth/PhoneAuthCredential;->zzd:Z

    .line 51
    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 52
    nop

    .line 53
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthCredential;->zze:Ljava/lang/String;

    .line 54
    nop

    .line 55
    const/4 v1, 0x6

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 56
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 57
    return-void
.end method

.method public final zza()Lcom/google/firebase/auth/AuthCredential;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/auth/PhoneAuthCredential;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/auth/PhoneAuthCredential;

    return-object v0
.end method

.method public final zza(Z)Lcom/google/firebase/auth/PhoneAuthCredential;
    .locals 0

    .line 4
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/firebase/auth/PhoneAuthCredential;->zzd:Z

    .line 5
    return-object p0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthCredential;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthCredential;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/google/firebase/auth/PhoneAuthCredential;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final zze()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/google/firebase/auth/PhoneAuthCredential;->zzd:Z

    return v0
.end method
