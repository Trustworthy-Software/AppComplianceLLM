.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzyh;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/common/api/Status;

.field private final zzb:Lcom/google/firebase/auth/zzf;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/firebase/auth/zzf;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyh;->zza:Lcom/google/android/gms/common/api/Status;

    .line 7
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyh;->zzb:Lcom/google/firebase/auth/zzf;

    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyh;->zzc:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyh;->zzd:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/common/api/Status;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyh;->zza:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public final zzb()Lcom/google/firebase/auth/zzf;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyh;->zzb:Lcom/google/firebase/auth/zzf;

    return-object v0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyh;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyh;->zzd:Ljava/lang/String;

    return-object v0
.end method
