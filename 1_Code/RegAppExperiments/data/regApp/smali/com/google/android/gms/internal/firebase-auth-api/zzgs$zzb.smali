.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase-auth-api/zzgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation


# static fields
.field public static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;

.field public static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;

.field public static final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;

.field public static final zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;

.field public static final zze:Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;

.field public static final zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;


# instance fields
.field private final zzg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;

    const-string v1, "ASSUME_AES_GCM"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;

    const-string v1, "ASSUME_XCHACHA20POLY1305"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;

    const-string v1, "ASSUME_CHACHA20POLY1305"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;

    const-string v1, "ASSUME_AES_CTR_HMAC"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;

    const-string v1, "ASSUME_AES_EAX"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;

    const-string v1, "ASSUME_AES_GCM_SIV"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;->zzg:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzgs$zzb;->zzg:Ljava/lang/String;

    return-object v0
.end method
