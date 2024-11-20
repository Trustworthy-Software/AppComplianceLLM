.class public final synthetic Lcom/google/android/gms/internal/firebase-auth-api/zzadf;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zza:Lcom/google/android/gms/internal/firebase-auth-api/zzadc;

.field private synthetic zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzade;

.field private synthetic zzc:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzadc;Lcom/google/android/gms/internal/firebase-auth-api/zzade;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadf;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzadc;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadf;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzade;

    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadf;->zzc:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadf;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzadc;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadf;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzade;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadf;->zzc:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzadc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacb;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzade;->zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/firebase-auth-api/zzacb;)V

    .line 3
    return-void
.end method
