.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzbz;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzbt;

.field private final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzbv;

.field private final zzc:I

.field private final zzd:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzbt;Lcom/google/android/gms/internal/firebase-auth-api/zzbv;IZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbz;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzbt;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbz;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzbv;

    .line 5
    iput p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbz;->zzc:I

    .line 6
    iput-boolean p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbz;->zzd:Z

    .line 7
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzbt;Lcom/google/android/gms/internal/firebase-auth-api/zzbv;IZLcom/google/android/gms/internal/firebase-auth-api/zzby;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzbz;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzbt;Lcom/google/android/gms/internal/firebase-auth-api/zzbv;IZ)V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/firebase-auth-api/zzbt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbz;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzbt;

    return-object v0
.end method
