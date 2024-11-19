.class final Lcom/google/android/gms/internal/firebase-auth-api/zzaae;
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
.field private final synthetic zza:Lcom/google/android/gms/internal/firebase-auth-api/zzadj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzyj;Lcom/google/android/gms/internal/firebase-auth-api/zzadj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaae;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzadj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 1

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaae;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzadj;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadj;->zza(Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method public final zza(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaae;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzadj;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadj;->zza(Ljava/lang/String;)V

    .line 3
    return-void
.end method
