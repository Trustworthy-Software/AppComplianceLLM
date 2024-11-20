.class final Lcom/google/android/gms/internal/measurement/zzhl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@21.5.0"


# instance fields
.field public zza:I

.field public zzb:J

.field public zzc:Ljava/lang/Object;

.field public final zzd:Lcom/google/android/gms/internal/measurement/zzik;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    nop

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzik;->zza:Lcom/google/android/gms/internal/measurement/zzik;

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzhl;->zzd:Lcom/google/android/gms/internal/measurement/zzik;

    .line 5
    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzik;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    if-eqz p1, :cond_0

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzhl;->zzd:Lcom/google/android/gms/internal/measurement/zzik;

    .line 10
    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method
