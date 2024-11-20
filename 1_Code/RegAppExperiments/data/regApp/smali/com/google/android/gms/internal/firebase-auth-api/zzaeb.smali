.class final Lcom/google/android/gms/internal/firebase-auth-api/zzaeb;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaeb;->zza:Ljava/lang/String;

    .line 5
    iput p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaeb;->zzb:I

    .line 6
    return-void
.end method


# virtual methods
.method final zza()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaeb;->zzb:I

    return v0
.end method

.method final zzb()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaeb;->zza:Ljava/lang/String;

    return-object v0
.end method
