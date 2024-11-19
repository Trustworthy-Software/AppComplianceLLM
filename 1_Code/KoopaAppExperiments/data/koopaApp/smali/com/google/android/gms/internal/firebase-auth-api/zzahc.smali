.class final Lcom/google/android/gms/internal/firebase-auth-api/zzahc;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# instance fields
.field public zza:I

.field public zzb:J

.field public zzc:Ljava/lang/Object;

.field public final zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzaig;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    nop

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaig;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaig;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahc;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzaig;

    .line 5
    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzaig;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    if-eqz p1, :cond_0

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahc;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzaig;

    .line 10
    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method
