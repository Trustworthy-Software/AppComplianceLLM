.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzd;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase-auth-api/zzjl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzd"
.end annotation


# static fields
.field public static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzd;

.field public static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzd;

.field public static final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzd;


# instance fields
.field private final zzd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzd;

    const-string v1, "TINK"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzd;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzd;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzd;

    const-string v1, "CRUNCHY"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzd;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzd;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzd;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzd;

    const-string v1, "NO_PREFIX"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzd;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzd;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzd;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzd;->zzd:Ljava/lang/String;

    .line 7
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjl$zzd;->zzd:Ljava/lang/String;

    return-object v0
.end method
