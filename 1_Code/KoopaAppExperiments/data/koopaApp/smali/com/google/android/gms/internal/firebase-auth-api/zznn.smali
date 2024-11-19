.class public final Lcom/google/android/gms/internal/firebase-auth-api/zznn;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zznn;

.field private static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zznq;


# instance fields
.field private final zzc:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzro;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zznn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zznn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zznn;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zznn;

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zznq;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zznq;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zznp;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zznn;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zznq;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zznn;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/firebase-auth-api/zznn;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zznn;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zznn;

    return-object v0
.end method


# virtual methods
.method public final zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzro;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zznn;->zzc:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzro;

    .line 3
    if-nez v0, :cond_0

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zznn;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zznq;

    return-object v0

    .line 5
    :cond_0
    return-object v0
.end method
