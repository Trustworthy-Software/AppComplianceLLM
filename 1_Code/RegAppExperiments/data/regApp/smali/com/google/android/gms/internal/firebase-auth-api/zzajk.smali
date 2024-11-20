.class abstract Lcom/google/android/gms/internal/firebase-auth-api/zzajk;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzajk;

.field private static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzajk;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzajj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzajj;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzajm;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzajk;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzajk;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzajl;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzajl;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzajo;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzajk;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzajk;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzajn;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzajk;-><init>()V

    return-void
.end method

.method static zza()Lcom/google/android/gms/internal/firebase-auth-api/zzajk;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzajk;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzajk;

    return-object v0
.end method

.method static zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzajk;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzajk;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzajk;

    return-object v0
.end method


# virtual methods
.method abstract zza(Ljava/lang/Object;J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end method

.method abstract zza(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method

.method abstract zzb(Ljava/lang/Object;J)V
.end method
