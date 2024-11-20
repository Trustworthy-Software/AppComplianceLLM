.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase-auth-api/zzjl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzc"
.end annotation


# static fields
.field public static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;

.field public static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;

.field public static final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;

.field public static final zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;


# instance fields
.field private final zze:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;

    const-string v1, "NIST_P256"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;

    const-string v1, "NIST_P384"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;

    const-string v1, "NIST_P521"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;

    const-string v1, "X25519"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;->zze:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzc;->zze:Ljava/lang/String;

    return-object v0
.end method
