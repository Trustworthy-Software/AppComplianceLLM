.class final Lcom/google/android/gms/internal/firebase-auth-api/zzahm;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

.field private final zzb:[B


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahm;->zzb:[B

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzb([B)Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    .line 7
    return-void
.end method

.method synthetic constructor <init>(ILcom/google/android/gms/internal/firebase-auth-api/zzahl;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahm;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzb()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzahn;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahm;->zzb:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahn;-><init>([B)V

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzahz;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahm;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzahz;

    return-object v0
.end method
