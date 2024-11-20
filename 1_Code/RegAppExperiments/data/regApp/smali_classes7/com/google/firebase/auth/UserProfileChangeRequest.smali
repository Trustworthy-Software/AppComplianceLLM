.class public Lcom/google/firebase/auth/UserProfileChangeRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/auth/UserProfileChangeRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/auth/UserProfileChangeRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private zzc:Z

.field private zzd:Z

.field private zze:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4
    new-instance v0, Lcom/google/firebase/auth/zzat;

    invoke-direct {v0}, Lcom/google/firebase/auth/zzat;-><init>()V

    sput-object v0, Lcom/google/firebase/auth/UserProfileChangeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/google/firebase/auth/UserProfileChangeRequest;->zza:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/google/firebase/auth/UserProfileChangeRequest;->zzb:Ljava/lang/String;

    .line 8
    iput-boolean p3, p0, Lcom/google/firebase/auth/UserProfileChangeRequest;->zzc:Z

    .line 9
    iput-boolean p4, p0, Lcom/google/firebase/auth/UserProfileChangeRequest;->zzd:Z

    .line 10
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/firebase/auth/UserProfileChangeRequest;->zze:Landroid/net/Uri;

    .line 11
    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/UserProfileChangeRequest;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/UserProfileChangeRequest;->zze:Landroid/net/Uri;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 12
    nop

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 14
    nop

    .line 15
    invoke-virtual {p0}, Lcom/google/firebase/auth/UserProfileChangeRequest;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 16
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 17
    nop

    .line 18
    iget-object v0, p0, Lcom/google/firebase/auth/UserProfileChangeRequest;->zzb:Ljava/lang/String;

    .line 19
    nop

    .line 20
    const/4 v1, 0x3

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 21
    nop

    .line 22
    iget-boolean v0, p0, Lcom/google/firebase/auth/UserProfileChangeRequest;->zzc:Z

    .line 23
    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 24
    nop

    .line 25
    iget-boolean v0, p0, Lcom/google/firebase/auth/UserProfileChangeRequest;->zzd:Z

    .line 26
    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 27
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 28
    return-void
.end method

.method public final zza()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/firebase/auth/UserProfileChangeRequest;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzb()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/google/firebase/auth/UserProfileChangeRequest;->zzc:Z

    return v0
.end method

.method public final zzc()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/google/firebase/auth/UserProfileChangeRequest;->zzd:Z

    return v0
.end method
