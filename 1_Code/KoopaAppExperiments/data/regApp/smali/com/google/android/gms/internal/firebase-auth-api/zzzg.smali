.class final Lcom/google/android/gms/internal/firebase-auth-api/zzzg;
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
.field private final synthetic zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

.field private final synthetic zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzyj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzyj;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzg;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzyj;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzg;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 3

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;-><init>()V

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafe;->zzc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzafs;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzafs;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzafs;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzafs;

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzg;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzyj;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzg;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    invoke-static {v1, v2, p1, v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzyj;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzyj;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;Lcom/google/android/gms/internal/firebase-auth-api/zzafe;Lcom/google/android/gms/internal/firebase-auth-api/zzafs;Lcom/google/android/gms/internal/firebase-auth-api/zzadg;)V

    .line 9
    return-void
.end method

.method public final zza(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzai;->zza(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzg;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;->zza(Lcom/google/android/gms/common/api/Status;)V

    .line 4
    return-void
.end method
