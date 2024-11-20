.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzyf;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# instance fields
.field private zza:Lcom/google/firebase/auth/PhoneMultiFactorInfo;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;

.field private final zzd:J

.field private final zze:Z

.field private final zzf:Z

.field private final zzg:Ljava/lang/String;

.field private final zzh:Ljava/lang/String;

.field private final zzi:Z


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/PhoneMultiFactorInfo;Ljava/lang/String;Ljava/lang/String;JZZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyf;->zza:Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    .line 9
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyf;->zzb:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyf;->zzc:Ljava/lang/String;

    .line 11
    iput-wide p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyf;->zzd:J

    .line 12
    iput-boolean p6, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyf;->zze:Z

    .line 13
    iput-boolean p7, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyf;->zzf:Z

    .line 14
    iput-object p8, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyf;->zzg:Ljava/lang/String;

    .line 15
    iput-object p9, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyf;->zzh:Ljava/lang/String;

    .line 16
    iput-boolean p10, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyf;->zzi:Z

    .line 17
    return-void
.end method


# virtual methods
.method public final zza()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyf;->zzd:J

    return-wide v0
.end method

.method public final zzb()Lcom/google/firebase/auth/PhoneMultiFactorInfo;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyf;->zza:Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    return-object v0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyf;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyf;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zze()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyf;->zzh:Ljava/lang/String;

    return-object v0
.end method

.method public final zzf()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyf;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final zzg()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyf;->zze:Z

    return v0
.end method

.method public final zzh()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyf;->zzi:Z

    return v0
.end method
