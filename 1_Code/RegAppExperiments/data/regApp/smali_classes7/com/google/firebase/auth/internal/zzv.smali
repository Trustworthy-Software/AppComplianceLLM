.class public Lcom/google/firebase/auth/internal/zzv;
.super Lcom/google/firebase/auth/FirebaseUser;
.source "com.google.firebase:firebase-auth@@22.2.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/auth/internal/zzv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

.field private zzb:Lcom/google/firebase/auth/internal/zzr;

.field private zzc:Ljava/lang/String;

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/internal/zzr;",
            ">;"
        }
    .end annotation
.end field

.field private zzf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/Boolean;

.field private zzi:Lcom/google/firebase/auth/internal/zzx;

.field private zzj:Z

.field private zzk:Lcom/google/firebase/auth/zzf;

.field private zzl:Lcom/google/firebase/auth/internal/zzbd;

.field private zzm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzafl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Lcom/google/firebase/auth/internal/zzy;

    invoke-direct {v0}, Lcom/google/firebase/auth/internal/zzy;-><init>()V

    sput-object v0, Lcom/google/firebase/auth/internal/zzv;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzafe;Lcom/google/firebase/auth/internal/zzr;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Lcom/google/firebase/auth/internal/zzx;ZLcom/google/firebase/auth/zzf;Lcom/google/firebase/auth/internal/zzbd;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzafe;",
            "Lcom/google/firebase/auth/internal/zzr;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/internal/zzr;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lcom/google/firebase/auth/internal/zzx;",
            "Z",
            "Lcom/google/firebase/auth/zzf;",
            "Lcom/google/firebase/auth/internal/zzbd;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzafl;",
            ">;)V"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Lcom/google/firebase/auth/FirebaseUser;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    .line 82
    iput-object p2, p0, Lcom/google/firebase/auth/internal/zzv;->zzb:Lcom/google/firebase/auth/internal/zzr;

    .line 83
    iput-object p3, p0, Lcom/google/firebase/auth/internal/zzv;->zzc:Ljava/lang/String;

    .line 84
    iput-object p4, p0, Lcom/google/firebase/auth/internal/zzv;->zzd:Ljava/lang/String;

    .line 85
    iput-object p5, p0, Lcom/google/firebase/auth/internal/zzv;->zze:Ljava/util/List;

    .line 86
    iput-object p6, p0, Lcom/google/firebase/auth/internal/zzv;->zzf:Ljava/util/List;

    .line 87
    iput-object p7, p0, Lcom/google/firebase/auth/internal/zzv;->zzg:Ljava/lang/String;

    .line 88
    iput-object p8, p0, Lcom/google/firebase/auth/internal/zzv;->zzh:Ljava/lang/Boolean;

    .line 89
    iput-object p9, p0, Lcom/google/firebase/auth/internal/zzv;->zzi:Lcom/google/firebase/auth/internal/zzx;

    .line 90
    iput-boolean p10, p0, Lcom/google/firebase/auth/internal/zzv;->zzj:Z

    .line 91
    iput-object p11, p0, Lcom/google/firebase/auth/internal/zzv;->zzk:Lcom/google/firebase/auth/zzf;

    .line 92
    iput-object p12, p0, Lcom/google/firebase/auth/internal/zzv;->zzl:Lcom/google/firebase/auth/internal/zzbd;

    .line 93
    iput-object p13, p0, Lcom/google/firebase/auth/internal/zzv;->zzm:Ljava/util/List;

    .line 94
    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/FirebaseApp;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/auth/UserInfo;",
            ">;)V"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Lcom/google/firebase/auth/FirebaseUser;-><init>()V

    .line 74
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzv;->zzc:Ljava/lang/String;

    .line 76
    const-string p1, "com.google.firebase.auth.internal.DefaultFirebaseUser"

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzv;->zzd:Ljava/lang/String;

    .line 77
    const-string p1, "2"

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzv;->zzg:Ljava/lang/String;

    .line 78
    invoke-virtual {p0, p2}, Lcom/google/firebase/auth/FirebaseUser;->zza(Ljava/util/List;)Lcom/google/firebase/auth/FirebaseUser;

    .line 79
    return-void
.end method

.method public static zza(Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/firebase/auth/FirebaseUser;
    .locals 2

    .line 4
    new-instance v0, Lcom/google/firebase/auth/internal/zzv;

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getProviderData()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/auth/internal/zzv;-><init>(Lcom/google/firebase/FirebaseApp;Ljava/util/List;)V

    .line 5
    instance-of p0, p1, Lcom/google/firebase/auth/internal/zzv;

    if-eqz p0, :cond_0

    .line 6
    move-object p0, p1

    check-cast p0, Lcom/google/firebase/auth/internal/zzv;

    .line 7
    nop

    .line 8
    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzv;->zzg:Ljava/lang/String;

    .line 9
    iput-object v1, v0, Lcom/google/firebase/auth/internal/zzv;->zzg:Ljava/lang/String;

    .line 10
    nop

    .line 11
    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzv;->zzd:Ljava/lang/String;

    .line 12
    iput-object v1, v0, Lcom/google/firebase/auth/internal/zzv;->zzd:Ljava/lang/String;

    .line 13
    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseUser;->getMetadata()Lcom/google/firebase/auth/FirebaseUserMetadata;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/auth/internal/zzx;

    .line 14
    iput-object p0, v0, Lcom/google/firebase/auth/internal/zzv;->zzi:Lcom/google/firebase/auth/internal/zzx;

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    nop

    .line 17
    const/4 p0, 0x0

    iput-object p0, v0, Lcom/google/firebase/auth/internal/zzv;->zzi:Lcom/google/firebase/auth/internal/zzx;

    .line 18
    :goto_0
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 19
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/firebase/auth/FirebaseUser;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafe;)V

    .line 20
    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->isAnonymous()Z

    move-result p0

    if-nez p0, :cond_2

    .line 21
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->zzb()Lcom/google/firebase/auth/FirebaseUser;

    .line 22
    :cond_2
    return-object v0
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzv;->zzb:Lcom/google/firebase/auth/internal/zzr;

    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzr;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzv;->zzb:Lcom/google/firebase/auth/internal/zzr;

    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzr;->getEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Lcom/google/firebase/auth/FirebaseUserMetadata;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzv;->zzi:Lcom/google/firebase/auth/internal/zzx;

    return-object v0
.end method

.method public synthetic getMultiFactor()Lcom/google/firebase/auth/MultiFactor;
    .locals 1

    .line 41
    nop

    .line 42
    new-instance v0, Lcom/google/firebase/auth/internal/zzz;

    invoke-direct {v0, p0}, Lcom/google/firebase/auth/internal/zzz;-><init>(Lcom/google/firebase/auth/internal/zzv;)V

    .line 43
    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzv;->zzb:Lcom/google/firebase/auth/internal/zzr;

    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzr;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhotoUrl()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzv;->zzb:Lcom/google/firebase/auth/internal/zzr;

    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzr;->getPhotoUrl()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getProviderData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/auth/UserInfo;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzv;->zze:Ljava/util/List;

    return-object v0
.end method

.method public getProviderId()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzv;->zzb:Lcom/google/firebase/auth/internal/zzr;

    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzr;->getProviderId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTenantId()Ljava/lang/String;
    .locals 3

    .line 53
    nop

    .line 54
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafe;->zzc()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    .line 56
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafe;->zzc()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/auth/internal/zzay;->zza(Ljava/lang/String;)Lcom/google/firebase/auth/GetTokenResult;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/google/firebase/auth/GetTokenResult;->getClaims()Ljava/util/Map;

    move-result-object v0

    .line 58
    const-string v2, "firebase"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 59
    if-eqz v0, :cond_0

    .line 60
    const-string v1, "tenant"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    goto :goto_0

    .line 61
    :cond_0
    nop

    .line 62
    :goto_0
    nop

    .line 63
    :cond_1
    return-object v1
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzv;->zzb:Lcom/google/firebase/auth/internal/zzr;

    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzr;->getUid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAnonymous()Z
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzv;->zzh:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 160
    :cond_0
    nop

    .line 161
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 162
    nop

    .line 163
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafe;->zzc()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/auth/internal/zzay;->zza(Ljava/lang/String;)Lcom/google/firebase/auth/GetTokenResult;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/firebase/auth/GetTokenResult;->getSignInProvider()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 165
    :cond_1
    nop

    .line 166
    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseUser;->getProviderData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_3

    if-eqz v1, :cond_2

    .line 167
    const-string v0, "custom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 168
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/auth/internal/zzv;->zzh:Ljava/lang/Boolean;

    .line 169
    :cond_4
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzv;->zzh:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isEmailVerified()Z
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzv;->zzb:Lcom/google/firebase/auth/internal/zzr;

    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzr;->isEmailVerified()Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 108
    nop

    .line 109
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 110
    nop

    .line 111
    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseUser;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    move-result-object v1

    .line 112
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 113
    nop

    .line 114
    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzv;->zzb:Lcom/google/firebase/auth/internal/zzr;

    .line 115
    nop

    .line 116
    const/4 v2, 0x2

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 117
    nop

    .line 118
    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzv;->zzc:Ljava/lang/String;

    .line 119
    nop

    .line 120
    const/4 v2, 0x3

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 121
    nop

    .line 122
    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzv;->zzd:Ljava/lang/String;

    .line 123
    nop

    .line 124
    const/4 v2, 0x4

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 125
    nop

    .line 126
    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzv;->zze:Ljava/util/List;

    .line 127
    nop

    .line 128
    const/4 v2, 0x5

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 129
    nop

    .line 130
    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseUser;->zzf()Ljava/util/List;

    move-result-object v1

    .line 131
    const/4 v2, 0x6

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeStringList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 132
    nop

    .line 133
    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzv;->zzg:Ljava/lang/String;

    .line 134
    nop

    .line 135
    const/4 v2, 0x7

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 136
    nop

    .line 137
    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseUser;->isAnonymous()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 138
    const/16 v2, 0x8

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBooleanObject(Landroid/os/Parcel;ILjava/lang/Boolean;Z)V

    .line 139
    nop

    .line 140
    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseUser;->getMetadata()Lcom/google/firebase/auth/FirebaseUserMetadata;

    move-result-object v1

    .line 141
    const/16 v2, 0x9

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 142
    nop

    .line 143
    iget-boolean v1, p0, Lcom/google/firebase/auth/internal/zzv;->zzj:Z

    .line 144
    const/16 v2, 0xa

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 145
    nop

    .line 146
    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzv;->zzk:Lcom/google/firebase/auth/zzf;

    .line 147
    nop

    .line 148
    const/16 v2, 0xb

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 149
    nop

    .line 150
    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzv;->zzl:Lcom/google/firebase/auth/internal/zzbd;

    .line 151
    nop

    .line 152
    const/16 v2, 0xc

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 153
    nop

    .line 154
    iget-object p2, p0, Lcom/google/firebase/auth/internal/zzv;->zzm:Ljava/util/List;

    .line 155
    nop

    .line 156
    const/16 v1, 0xd

    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 157
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 158
    return-void
.end method

.method public final zza()Lcom/google/firebase/FirebaseApp;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzv;->zzc:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/firebase/FirebaseApp;->getInstance(Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized zza(Ljava/util/List;)Lcom/google/firebase/auth/FirebaseUser;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/auth/UserInfo;",
            ">;)",
            "Lcom/google/firebase/auth/FirebaseUser;"
        }
    .end annotation

    monitor-enter p0

    .line 27
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/firebase/auth/internal/zzv;->zze:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/firebase/auth/internal/zzv;->zzf:Ljava/util/List;

    .line 30
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 31
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/auth/UserInfo;

    .line 32
    invoke-interface {v2}, Lcom/google/firebase/auth/UserInfo;->getProviderId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "firebase"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 33
    move-object v3, v2

    check-cast v3, Lcom/google/firebase/auth/internal/zzr;

    iput-object v3, p0, Lcom/google/firebase/auth/internal/zzv;->zzb:Lcom/google/firebase/auth/internal/zzr;

    goto :goto_1

    .line 34
    :cond_0
    iget-object v3, p0, Lcom/google/firebase/auth/internal/zzv;->zzf:Ljava/util/List;

    invoke-interface {v2}, Lcom/google/firebase/auth/UserInfo;->getProviderId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    :goto_1
    iget-object v3, p0, Lcom/google/firebase/auth/internal/zzv;->zze:Ljava/util/List;

    check-cast v2, Lcom/google/firebase/auth/internal/zzr;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    :cond_1
    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzv;->zzb:Lcom/google/firebase/auth/internal/zzr;

    if-nez p1, :cond_2

    .line 38
    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzv;->zze:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/internal/zzr;

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzv;->zzb:Lcom/google/firebase/auth/internal/zzr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_2
    monitor-exit p0

    return-object p0

    .line 26
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zza(Ljava/lang/String;)Lcom/google/firebase/auth/internal/zzv;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzv;->zzg:Ljava/lang/String;

    .line 46
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafe;)V
    .locals 0

    .line 95
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    .line 96
    return-void
.end method

.method public final zza(Lcom/google/firebase/auth/internal/zzx;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzv;->zzi:Lcom/google/firebase/auth/internal/zzx;

    .line 105
    return-void
.end method

.method public final zza(Lcom/google/firebase/auth/zzf;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzv;->zzk:Lcom/google/firebase/auth/zzf;

    .line 98
    return-void
.end method

.method public final zza(Z)V
    .locals 0

    .line 102
    iput-boolean p1, p0, Lcom/google/firebase/auth/internal/zzv;->zzj:Z

    .line 103
    return-void
.end method

.method public final synthetic zzb()Lcom/google/firebase/auth/FirebaseUser;
    .locals 1

    .line 23
    nop

    .line 24
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/auth/internal/zzv;->zzh:Ljava/lang/Boolean;

    .line 25
    nop

    .line 26
    return-object p0
.end method

.method public final zzb(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/MultiFactorInfo;",
            ">;)V"
        }
    .end annotation

    .line 106
    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzbd;->zza(Ljava/util/List;)Lcom/google/firebase/auth/internal/zzbd;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzv;->zzl:Lcom/google/firebase/auth/internal/zzbd;

    .line 107
    return-void
.end method

.method public final zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzafe;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    return-object v0
.end method

.method public final zzc(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzafl;",
            ">;)V"
        }
    .end annotation

    .line 99
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzv;->zzm:Ljava/util/List;

    .line 101
    return-void
.end method

.method public final zzd()Ljava/lang/String;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseUser;->zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafe;->zzc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zze()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafe;->zzf()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzf()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzv;->zzf:Ljava/util/List;

    return-object v0
.end method

.method public final zzg()Lcom/google/firebase/auth/zzf;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzv;->zzk:Lcom/google/firebase/auth/zzf;

    return-object v0
.end method

.method public final zzh()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/MultiFactorInfo;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzv;->zzl:Lcom/google/firebase/auth/internal/zzbd;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzbd;->zza()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 67
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    return-object v0
.end method

.method public final zzi()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/internal/zzr;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzv;->zze:Ljava/util/List;

    return-object v0
.end method

.method public final zzj()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Lcom/google/firebase/auth/internal/zzv;->zzj:Z

    return v0
.end method
