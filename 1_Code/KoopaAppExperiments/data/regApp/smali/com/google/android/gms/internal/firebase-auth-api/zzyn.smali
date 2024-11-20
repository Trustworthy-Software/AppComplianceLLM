.class final Lcom/google/android/gms/internal/firebase-auth-api/zzyn;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzadj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzadj<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzafe;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/firebase/auth/EmailAuthCredential;

.field private final synthetic zzb:Ljava/lang/String;

.field private final synthetic zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

.field private final synthetic zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzyj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzyj;Lcom/google/firebase/auth/EmailAuthCredential;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyn;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzyj;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyn;->zza:Lcom/google/firebase/auth/EmailAuthCredential;

    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyn;->zzb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyn;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 3

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaej;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyn;->zza:Lcom/google/firebase/auth/EmailAuthCredential;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafe;->zzc()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyn;->zzb:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaej;-><init>(Lcom/google/firebase/auth/EmailAuthCredential;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyn;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzyj;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyn;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyj;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzyj;Lcom/google/android/gms/internal/firebase-auth-api/zzaej;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;)V

    .line 9
    return-void
.end method

.method public final zza(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzai;->zza(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzyn;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;->zza(Lcom/google/android/gms/common/api/Status;)V

    .line 4
    return-void
.end method
