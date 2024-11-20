.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzyc;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/firebase/auth/ActionCodeSettings;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/firebase/auth/ActionCodeSettings;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyc;->zza:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyc;->zzb:Lcom/google/firebase/auth/ActionCodeSettings;

    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyc;->zzc:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyc;->zzd:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/firebase/auth/ActionCodeSettings;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyc;->zzb:Lcom/google/firebase/auth/ActionCodeSettings;

    return-object v0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyc;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyc;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyc;->zzc:Ljava/lang/String;

    return-object v0
.end method
