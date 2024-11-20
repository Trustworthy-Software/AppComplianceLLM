.class public final Lcom/google/firebase/auth/internal/zzab;
.super Lcom/google/firebase/auth/MultiFactorResolver;
.source "com.google.firebase:firebase-auth@@22.2.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/auth/internal/zzab;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/PhoneMultiFactorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final zzb:Lcom/google/firebase/auth/internal/zzag;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Lcom/google/firebase/auth/zzf;

.field private final zze:Lcom/google/firebase/auth/internal/zzv;

.field private final zzf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/TotpMultiFactorInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/google/firebase/auth/internal/zzad;

    invoke-direct {v0}, Lcom/google/firebase/auth/internal/zzad;-><init>()V

    sput-object v0, Lcom/google/firebase/auth/internal/zzab;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/google/firebase/auth/internal/zzag;Ljava/lang/String;Lcom/google/firebase/auth/zzf;Lcom/google/firebase/auth/internal/zzv;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/PhoneMultiFactorInfo;",
            ">;",
            "Lcom/google/firebase/auth/internal/zzag;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/zzf;",
            "Lcom/google/firebase/auth/internal/zzv;",
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/TotpMultiFactorInfo;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lcom/google/firebase/auth/MultiFactorResolver;-><init>()V

    .line 42
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzab;->zza:Ljava/util/List;

    .line 43
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/internal/zzag;

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzab;->zzb:Lcom/google/firebase/auth/internal/zzag;

    .line 44
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzab;->zzc:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Lcom/google/firebase/auth/internal/zzab;->zzd:Lcom/google/firebase/auth/zzf;

    .line 46
    iput-object p5, p0, Lcom/google/firebase/auth/internal/zzab;->zze:Lcom/google/firebase/auth/internal/zzv;

    .line 47
    invoke-static {p6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzab;->zzf:Ljava/util/List;

    .line 48
    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzyk;Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/firebase/auth/internal/zzab;
    .locals 8

    .line 7
    nop

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzyk;->zzc()Ljava/util/List;

    move-result-object v0

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/auth/MultiFactorInfo;

    .line 11
    instance-of v3, v1, Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    if-eqz v3, :cond_0

    .line 12
    check-cast v1, Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_0
    goto :goto_0

    .line 14
    :cond_1
    nop

    .line 15
    nop

    .line 16
    nop

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzyk;->zzc()Ljava/util/List;

    move-result-object v0

    .line 18
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 19
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/auth/MultiFactorInfo;

    .line 20
    instance-of v3, v1, Lcom/google/firebase/auth/TotpMultiFactorInfo;

    if-eqz v3, :cond_2

    .line 21
    check-cast v1, Lcom/google/firebase/auth/TotpMultiFactorInfo;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_2
    goto :goto_1

    .line 23
    :cond_3
    nop

    .line 24
    nop

    .line 25
    nop

    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzyk;->zzc()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzyk;->zzb()Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Lcom/google/firebase/auth/internal/zzag;->zza(Ljava/util/List;Ljava/lang/String;)Lcom/google/firebase/auth/internal/zzag;

    move-result-object v3

    .line 28
    new-instance v0, Lcom/google/firebase/auth/internal/zzab;

    .line 29
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object v4

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzyk;->zza()Lcom/google/firebase/auth/zzf;

    move-result-object v5

    move-object v6, p2

    check-cast v6, Lcom/google/firebase/auth/internal/zzv;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/firebase/auth/internal/zzab;-><init>(Ljava/util/List;Lcom/google/firebase/auth/internal/zzag;Ljava/lang/String;Lcom/google/firebase/auth/zzf;Lcom/google/firebase/auth/internal/zzv;Ljava/util/List;)V

    .line 31
    return-object v0
.end method

.method static bridge synthetic zza(Lcom/google/firebase/auth/internal/zzab;)Lcom/google/firebase/auth/zzf;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/auth/internal/zzab;->zzd:Lcom/google/firebase/auth/zzf;

    return-object p0
.end method


# virtual methods
.method public final getFirebaseAuth()Lcom/google/firebase/auth/FirebaseAuth;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzab;->zzc:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/firebase/FirebaseApp;->getInstance(Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    return-object v0
.end method

.method public final getHints()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/MultiFactorInfo;",
            ">;"
        }
    .end annotation

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzab;->zza:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    .line 34
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzab;->zzf:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/auth/TotpMultiFactorInfo;

    .line 37
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    return-object v0
.end method

.method public final getSession()Lcom/google/firebase/auth/MultiFactorSession;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzab;->zzb:Lcom/google/firebase/auth/internal/zzag;

    return-object v0
.end method

.method public final resolveSignIn(Lcom/google/firebase/auth/MultiFactorAssertion;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/MultiFactorAssertion;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/auth/MultiFactorResolver;->getFirebaseAuth()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzab;->zzb:Lcom/google/firebase/auth/internal/zzag;

    iget-object v2, p0, Lcom/google/firebase/auth/internal/zzab;->zze:Lcom/google/firebase/auth/internal/zzv;

    .line 2
    invoke-virtual {v0, p1, v1, v2}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lcom/google/firebase/auth/MultiFactorAssertion;Lcom/google/firebase/auth/internal/zzag;Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/google/firebase/auth/internal/zzae;

    invoke-direct {v0, p0}, Lcom/google/firebase/auth/internal/zzae;-><init>(Lcom/google/firebase/auth/internal/zzab;)V

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 4
    return-object p1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 49
    nop

    .line 50
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 51
    nop

    .line 52
    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzab;->zza:Ljava/util/List;

    .line 53
    nop

    .line 54
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 55
    nop

    .line 56
    invoke-virtual {p0}, Lcom/google/firebase/auth/MultiFactorResolver;->getSession()Lcom/google/firebase/auth/MultiFactorSession;

    move-result-object v1

    .line 57
    const/4 v2, 0x2

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 58
    nop

    .line 59
    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzab;->zzc:Ljava/lang/String;

    .line 60
    nop

    .line 61
    const/4 v2, 0x3

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 62
    nop

    .line 63
    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzab;->zzd:Lcom/google/firebase/auth/zzf;

    .line 64
    nop

    .line 65
    const/4 v2, 0x4

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 66
    nop

    .line 67
    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzab;->zze:Lcom/google/firebase/auth/internal/zzv;

    .line 68
    nop

    .line 69
    const/4 v2, 0x5

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 70
    nop

    .line 71
    iget-object p2, p0, Lcom/google/firebase/auth/internal/zzab;->zzf:Ljava/util/List;

    .line 72
    nop

    .line 73
    const/4 v1, 0x6

    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 74
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 75
    return-void
.end method
