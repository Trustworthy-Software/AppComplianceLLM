.class public final Lcom/google/firebase/auth/internal/zzag;
.super Lcom/google/firebase/auth/MultiFactorSession;
.source "com.google.firebase:firebase-auth@@22.2.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/auth/internal/zzag;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private zzc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/PhoneMultiFactorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private zzd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/TotpMultiFactorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private zze:Lcom/google/firebase/auth/internal/zzv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lcom/google/firebase/auth/internal/zzaf;

    invoke-direct {v0}, Lcom/google/firebase/auth/internal/zzaf;-><init>()V

    sput-object v0, Lcom/google/firebase/auth/internal/zzag;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/google/firebase/auth/MultiFactorSession;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/google/firebase/auth/internal/zzv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/PhoneMultiFactorInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/TotpMultiFactorInfo;",
            ">;",
            "Lcom/google/firebase/auth/internal/zzv;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Lcom/google/firebase/auth/MultiFactorSession;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzag;->zza:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/google/firebase/auth/internal/zzag;->zzb:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/google/firebase/auth/internal/zzag;->zzc:Ljava/util/List;

    .line 37
    iput-object p4, p0, Lcom/google/firebase/auth/internal/zzag;->zzd:Ljava/util/List;

    .line 38
    iput-object p5, p0, Lcom/google/firebase/auth/internal/zzag;->zze:Lcom/google/firebase/auth/internal/zzv;

    .line 39
    return-void
.end method

.method public static zza(Ljava/lang/String;Lcom/google/firebase/auth/internal/zzv;)Lcom/google/firebase/auth/internal/zzag;
    .locals 1

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/google/firebase/auth/internal/zzag;

    invoke-direct {v0}, Lcom/google/firebase/auth/internal/zzag;-><init>()V

    .line 4
    iput-object p0, v0, Lcom/google/firebase/auth/internal/zzag;->zza:Ljava/lang/String;

    .line 5
    nop

    .line 6
    nop

    .line 7
    iput-object p1, v0, Lcom/google/firebase/auth/internal/zzag;->zze:Lcom/google/firebase/auth/internal/zzv;

    .line 8
    nop

    .line 9
    return-object v0
.end method

.method public static zza(Ljava/util/List;Ljava/lang/String;)Lcom/google/firebase/auth/internal/zzag;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/MultiFactorInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/firebase/auth/internal/zzag;"
        }
    .end annotation

    .line 10
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    new-instance v0, Lcom/google/firebase/auth/internal/zzag;

    invoke-direct {v0}, Lcom/google/firebase/auth/internal/zzag;-><init>()V

    .line 13
    nop

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/firebase/auth/internal/zzag;->zzc:Ljava/util/List;

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/firebase/auth/internal/zzag;->zzd:Ljava/util/List;

    .line 16
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/auth/MultiFactorInfo;

    .line 17
    instance-of v2, v1, Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    if-eqz v2, :cond_0

    .line 18
    iget-object v2, v0, Lcom/google/firebase/auth/internal/zzag;->zzc:Ljava/util/List;

    check-cast v1, Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_0
    instance-of v2, v1, Lcom/google/firebase/auth/TotpMultiFactorInfo;

    if-eqz v2, :cond_1

    .line 20
    iget-object v2, v0, Lcom/google/firebase/auth/internal/zzag;->zzd:Ljava/util/List;

    check-cast v1, Lcom/google/firebase/auth/TotpMultiFactorInfo;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 21
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 22
    invoke-virtual {v1}, Lcom/google/firebase/auth/MultiFactorInfo;->getFactorId()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MultiFactorInfo must be either PhoneMultiFactorInfo or TotpMultiFactorInfo. The factorId of this MultiFactorInfo: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 23
    :cond_2
    nop

    .line 24
    nop

    .line 25
    nop

    .line 26
    iput-object p1, v0, Lcom/google/firebase/auth/internal/zzag;->zzb:Ljava/lang/String;

    .line 27
    nop

    .line 28
    return-object v0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 40
    nop

    .line 41
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 42
    nop

    .line 43
    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzag;->zza:Ljava/lang/String;

    .line 44
    nop

    .line 45
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 46
    nop

    .line 47
    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzag;->zzb:Ljava/lang/String;

    .line 48
    nop

    .line 49
    const/4 v2, 0x2

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 50
    nop

    .line 51
    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzag;->zzc:Ljava/util/List;

    .line 52
    nop

    .line 53
    const/4 v2, 0x3

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 54
    nop

    .line 55
    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzag;->zzd:Ljava/util/List;

    .line 56
    nop

    .line 57
    const/4 v2, 0x4

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 58
    nop

    .line 59
    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzag;->zze:Lcom/google/firebase/auth/internal/zzv;

    .line 60
    nop

    .line 61
    const/4 v2, 0x5

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 62
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 63
    return-void
.end method

.method public final zza()Lcom/google/firebase/auth/internal/zzv;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzag;->zze:Lcom/google/firebase/auth/internal/zzv;

    return-object v0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzag;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzag;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzd()Z
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzag;->zza:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
