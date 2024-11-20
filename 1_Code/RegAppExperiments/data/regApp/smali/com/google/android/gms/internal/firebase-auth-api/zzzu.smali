.class final Lcom/google/android/gms/internal/firebase-auth-api/zzzu;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzadj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzadj<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzaeu;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/firebase-auth-api/zzadj;

.field private final synthetic zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

.field private final synthetic zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzzr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzzr;Lcom/google/android/gms/internal/firebase-auth-api/zzadj;Lcom/google/android/gms/internal/firebase-auth-api/zzafe;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzu;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzzr;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzu;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzadj;

    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzu;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 3

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaeu;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaeu;->zza()Ljava/util/List;

    move-result-object p1

    .line 6
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzu;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzzr;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzzr;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzu;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzaex;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafe;Lcom/google/android/gms/internal/firebase-auth-api/zzaex;)V

    .line 10
    return-void

    .line 7
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzu;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzadj;

    const-string v0, "No users"

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadj;->zza(Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public final zza(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzu;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzadj;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadj;->zza(Ljava/lang/String;)V

    .line 3
    return-void
.end method
