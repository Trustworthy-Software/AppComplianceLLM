.class public final Lcom/google/firebase/auth/internal/zzp;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/firebase/auth/AuthResult;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/auth/internal/zzp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zza:Lcom/google/firebase/auth/internal/zzv;

.field private zzb:Lcom/google/firebase/auth/internal/zzn;

.field private zzc:Lcom/google/firebase/auth/zzf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    new-instance v0, Lcom/google/firebase/auth/internal/zzs;

    invoke-direct {v0}, Lcom/google/firebase/auth/internal/zzs;-><init>()V

    sput-object v0, Lcom/google/firebase/auth/internal/zzp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/auth/internal/zzv;)V
    .locals 6

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/auth/internal/zzv;

    iput-object v0, p0, Lcom/google/firebase/auth/internal/zzp;->zza:Lcom/google/firebase/auth/internal/zzv;

    .line 8
    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzv;->zzi()Ljava/util/List;

    move-result-object v0

    .line 9
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/firebase/auth/internal/zzp;->zzb:Lcom/google/firebase/auth/internal/zzn;

    .line 10
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/auth/internal/zzr;

    invoke-virtual {v2}, Lcom/google/firebase/auth/internal/zzr;->zza()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 12
    new-instance v2, Lcom/google/firebase/auth/internal/zzn;

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/auth/internal/zzr;

    invoke-virtual {v3}, Lcom/google/firebase/auth/internal/zzr;->getProviderId()Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/auth/internal/zzr;

    invoke-virtual {v4}, Lcom/google/firebase/auth/internal/zzr;->zza()Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/zzv;->zzj()Z

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/google/firebase/auth/internal/zzn;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v2, p0, Lcom/google/firebase/auth/internal/zzp;->zzb:Lcom/google/firebase/auth/internal/zzn;

    .line 16
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzp;->zzb:Lcom/google/firebase/auth/internal/zzn;

    if-nez v0, :cond_2

    .line 18
    new-instance v0, Lcom/google/firebase/auth/internal/zzn;

    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/zzv;->zzj()Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/firebase/auth/internal/zzn;-><init>(Z)V

    iput-object v0, p0, Lcom/google/firebase/auth/internal/zzp;->zzb:Lcom/google/firebase/auth/internal/zzn;

    .line 19
    :cond_2
    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/zzv;->zzg()Lcom/google/firebase/auth/zzf;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzp;->zzc:Lcom/google/firebase/auth/zzf;

    .line 20
    return-void
.end method

.method constructor <init>(Lcom/google/firebase/auth/internal/zzv;Lcom/google/firebase/auth/internal/zzn;Lcom/google/firebase/auth/zzf;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzp;->zza:Lcom/google/firebase/auth/internal/zzv;

    .line 23
    iput-object p2, p0, Lcom/google/firebase/auth/internal/zzp;->zzb:Lcom/google/firebase/auth/internal/zzn;

    .line 24
    iput-object p3, p0, Lcom/google/firebase/auth/internal/zzp;->zzc:Lcom/google/firebase/auth/zzf;

    .line 25
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final getAdditionalUserInfo()Lcom/google/firebase/auth/AdditionalUserInfo;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzp;->zzb:Lcom/google/firebase/auth/internal/zzn;

    return-object v0
.end method

.method public final getCredential()Lcom/google/firebase/auth/AuthCredential;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzp;->zzc:Lcom/google/firebase/auth/zzf;

    return-object v0
.end method

.method public final getUser()Lcom/google/firebase/auth/FirebaseUser;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzp;->zza:Lcom/google/firebase/auth/internal/zzv;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 26
    nop

    .line 27
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 28
    nop

    .line 29
    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/zzp;->getUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v1

    .line 30
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 31
    nop

    .line 32
    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/zzp;->getAdditionalUserInfo()Lcom/google/firebase/auth/AdditionalUserInfo;

    move-result-object v1

    .line 33
    const/4 v2, 0x2

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 34
    nop

    .line 35
    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzp;->zzc:Lcom/google/firebase/auth/zzf;

    .line 36
    nop

    .line 37
    const/4 v2, 0x3

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 38
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 39
    return-void
.end method
