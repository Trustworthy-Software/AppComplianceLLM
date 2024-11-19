.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzb;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase-auth-api/zzka;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zze"
.end annotation


# static fields
.field public static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;

.field public static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;

.field public static final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;

    const-string v1, "HKDF_SHA256"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;

    const-string v1, "HKDF_SHA384"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;

    const-string v1, "HKDF_SHA512"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzka$zze;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 5
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzb;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/firebase-auth-api/zzkb;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzka$zzb;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
