.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzagj;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzaco;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzagj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private zzc:Ljava/lang/String;

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:Z

.field private zzj:Z

.field private zzk:Ljava/lang/String;

.field private zzl:Ljava/lang/String;

.field private zzm:Ljava/lang/String;

.field private zzn:Ljava/lang/String;

.field private zzo:Z

.field private zzp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzagi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzagi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzi:Z

    .line 33
    iput-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzj:Z

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/auth/internal/zzh;Ljava/lang/String;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 36
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/zzh;->zzd()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzl:Ljava/lang/String;

    .line 38
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzm:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/zzh;->zzc()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zze:Ljava/lang/String;

    .line 40
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzi:Z

    .line 41
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    const-string p2, "providerId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zze:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzg:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 46
    const-string p4, "http://localhost"

    iput-object p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zza:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzc:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzd:Ljava/lang/String;

    .line 49
    iput-object p5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzh:Ljava/lang/String;

    .line 50
    iput-object p6, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzk:Ljava/lang/String;

    .line 51
    iput-object p7, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzn:Ljava/lang/String;

    .line 52
    iput-object p8, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzp:Ljava/lang/String;

    .line 53
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzi:Z

    .line 54
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzd:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzk:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "idToken, accessToken and authCode cannot all be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_1
    :goto_0
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zze:Ljava/lang/String;

    .line 57
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzf:Ljava/lang/String;

    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzc:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const-string p4, "&"

    if-nez p3, :cond_2

    .line 60
    const-string p3, "id_token="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzc:Ljava/lang/String;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    :cond_2
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzd:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 62
    const-string p3, "access_token="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzd:Ljava/lang/String;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    :cond_3
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzf:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 64
    const-string p3, "identifier="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzf:Ljava/lang/String;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    :cond_4
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzh:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_5

    .line 66
    const-string p3, "oauth_token_secret="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzh:Ljava/lang/String;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    :cond_5
    iget-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzk:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_6

    .line 68
    const-string p3, "code="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzk:Ljava/lang/String;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :cond_6
    invoke-static {p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_7

    .line 70
    const-string p3, "nonce="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    :cond_7
    const-string p3, "providerId="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zze:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzg:Ljava/lang/String;

    .line 73
    iput-boolean p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzj:Z

    .line 74
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    .line 75
    move-object v0, p0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 76
    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zza:Ljava/lang/String;

    .line 77
    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzb:Ljava/lang/String;

    .line 78
    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzc:Ljava/lang/String;

    .line 79
    move-object v1, p4

    iput-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzd:Ljava/lang/String;

    .line 80
    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zze:Ljava/lang/String;

    .line 81
    move-object v1, p6

    iput-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzf:Ljava/lang/String;

    .line 82
    move-object v1, p7

    iput-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzg:Ljava/lang/String;

    .line 83
    move-object v1, p8

    iput-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzh:Ljava/lang/String;

    .line 84
    move v1, p9

    iput-boolean v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzi:Z

    .line 85
    move v1, p10

    iput-boolean v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzj:Z

    .line 86
    move-object v1, p11

    iput-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzk:Ljava/lang/String;

    .line 87
    move-object v1, p12

    iput-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzl:Ljava/lang/String;

    .line 88
    move-object v1, p13

    iput-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzm:Ljava/lang/String;

    .line 89
    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzn:Ljava/lang/String;

    .line 90
    move/from16 v1, p15

    iput-boolean v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzo:Z

    .line 91
    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzp:Ljava/lang/String;

    .line 92
    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 93
    nop

    .line 94
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 95
    nop

    .line 96
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zza:Ljava/lang/String;

    .line 97
    nop

    .line 98
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 99
    nop

    .line 100
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzb:Ljava/lang/String;

    .line 101
    nop

    .line 102
    const/4 v1, 0x3

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 103
    nop

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzc:Ljava/lang/String;

    .line 105
    nop

    .line 106
    const/4 v1, 0x4

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 107
    nop

    .line 108
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzd:Ljava/lang/String;

    .line 109
    nop

    .line 110
    const/4 v1, 0x5

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 111
    nop

    .line 112
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zze:Ljava/lang/String;

    .line 113
    nop

    .line 114
    const/4 v1, 0x6

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 115
    nop

    .line 116
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzf:Ljava/lang/String;

    .line 117
    nop

    .line 118
    const/4 v1, 0x7

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 119
    nop

    .line 120
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzg:Ljava/lang/String;

    .line 121
    nop

    .line 122
    const/16 v1, 0x8

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 123
    nop

    .line 124
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzh:Ljava/lang/String;

    .line 125
    nop

    .line 126
    const/16 v1, 0x9

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 127
    nop

    .line 128
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzi:Z

    .line 129
    const/16 v1, 0xa

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 130
    nop

    .line 131
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzj:Z

    .line 132
    const/16 v1, 0xb

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 133
    nop

    .line 134
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzk:Ljava/lang/String;

    .line 135
    nop

    .line 136
    const/16 v1, 0xc

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 137
    nop

    .line 138
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzl:Ljava/lang/String;

    .line 139
    nop

    .line 140
    const/16 v1, 0xd

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 141
    nop

    .line 142
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzm:Ljava/lang/String;

    .line 143
    nop

    .line 144
    const/16 v1, 0xe

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 145
    nop

    .line 146
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzn:Ljava/lang/String;

    .line 147
    nop

    .line 148
    const/16 v1, 0xf

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 149
    nop

    .line 150
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzo:Z

    .line 151
    const/16 v1, 0x10

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 152
    nop

    .line 153
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzp:Ljava/lang/String;

    .line 154
    nop

    .line 155
    const/16 v1, 0x11

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 156
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 157
    return-void
.end method

.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzagj;
    .locals 0

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzb:Ljava/lang/String;

    .line 4
    return-object p0
.end method

.method public final zza(Z)Lcom/google/android/gms/internal/firebase-auth-api/zzagj;
    .locals 0

    .line 1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzj:Z

    .line 2
    return-object p0
.end method

.method public final zza()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 11
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 12
    const-string v1, "autoCreate"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzj:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 13
    const-string v1, "returnSecureToken"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzi:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzb:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 15
    const-string v2, "idToken"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzg:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 17
    const-string v2, "postBody"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzn:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 19
    const-string v2, "tenantId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzp:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 21
    const-string v2, "pendingToken"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 23
    const-string v1, "sessionId"

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzm:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "requestUri"

    if-nez v1, :cond_5

    .line 25
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzm:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 26
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zza:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 27
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    :cond_6
    :goto_0
    const-string v1, "returnIdpCredential"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzo:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 29
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzagj;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzn:Ljava/lang/String;

    .line 10
    return-object p0
.end method

.method public final zzb(Z)Lcom/google/android/gms/internal/firebase-auth-api/zzagj;
    .locals 0

    .line 5
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzo:Z

    .line 6
    return-object p0
.end method

.method public final zzc(Z)Lcom/google/android/gms/internal/firebase-auth-api/zzagj;
    .locals 0

    .line 7
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzi:Z

    .line 8
    return-object p0
.end method
