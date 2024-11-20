.class final Lcom/google/android/gms/internal/firebase-auth-api/zzze;
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
.field final synthetic zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

.field final synthetic zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzyj;

.field private final synthetic zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzagj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzyj;Lcom/google/android/gms/internal/firebase-auth-api/zzagj;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzze;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzyj;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzze;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzagj;

    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzze;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 2

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzze;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzagj;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zzb(Z)Lcom/google/android/gms/internal/firebase-auth-api/zzagj;

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzze;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzagj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafe;->zzc()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzagj;

    .line 8
    nop

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzze;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzyj;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyj;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzyj;)Lcom/google/android/gms/internal/firebase-auth-api/zzadh;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzze;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzagj;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzzd;

    invoke-direct {v1, p0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzzd;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzze;Lcom/google/android/gms/internal/firebase-auth-api/zzadj;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadh;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzagj;Lcom/google/android/gms/internal/firebase-auth-api/zzadj;)V

    .line 10
    return-void
.end method

.method public final zza(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzai;->zza(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzze;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;->zza(Lcom/google/android/gms/common/api/Status;)V

    .line 4
    return-void
.end method
