.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzyd;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# instance fields
.field private final zza:Lcom/google/firebase/auth/EmailAuthCredential;

.field private final zzb:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/EmailAuthCredential;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyd;->zza:Lcom/google/firebase/auth/EmailAuthCredential;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyd;->zzb:Ljava/lang/String;

    .line 6
    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/firebase/auth/EmailAuthCredential;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyd;->zza:Lcom/google/firebase/auth/EmailAuthCredential;

    return-object v0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyd;->zzb:Ljava/lang/String;

    return-object v0
.end method
