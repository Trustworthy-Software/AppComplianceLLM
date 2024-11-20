.class public final Lcom/google/android/gms/measurement/AppMeasurementJobService;
.super Landroid/app/job/JobService;
.source "com.google.android.gms:play-services-measurement@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzly;


# instance fields
.field private zza:Lcom/google/android/gms/measurement/internal/zzlu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/measurement/internal/zzlu<",
            "Lcom/google/android/gms/measurement/AppMeasurementJobService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 5
    return-void
.end method

.method private final zza()Lcom/google/android/gms/measurement/internal/zzlu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/measurement/internal/zzlu<",
            "Lcom/google/android/gms/measurement/AppMeasurementJobService;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementJobService;->zza:Lcom/google/android/gms/measurement/internal/zzlu;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzlu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzlu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementJobService;->zza:Lcom/google/android/gms/measurement/internal/zzlu;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurementJobService;->zza:Lcom/google/android/gms/measurement/internal/zzlu;

    return-object v0
.end method


# virtual methods
.method public final onCreate()V
    .locals 1

    .line 7
    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementJobService;->zza()Lcom/google/android/gms/measurement/internal/zzlu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzlu;->zza()V

    .line 9
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementJobService;->zza()Lcom/google/android/gms/measurement/internal/zzlu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzlu;->zzb()V

    .line 11
    invoke-super {p0}, Landroid/app/job/JobService;->onDestroy()V

    .line 12
    return-void
.end method

.method public final onRebind(Landroid/content/Intent;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementJobService;->zza()Lcom/google/android/gms/measurement/internal/zzlu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzlu;->zzb(Landroid/content/Intent;)V

    .line 14
    return-void
.end method

.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementJobService;->zza()Lcom/google/android/gms/measurement/internal/zzlu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzlu;->zza(Landroid/app/job/JobParameters;)Z

    move-result p1

    return p1
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    .line 19
    const/4 p1, 0x0

    return p1
.end method

.method public final onUnbind(Landroid/content/Intent;)Z
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/measurement/AppMeasurementJobService;->zza()Lcom/google/android/gms/measurement/internal/zzlu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzlu;->zzc(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public final zza(Landroid/app/job/JobParameters;Z)V
    .locals 0

    .line 15
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/AppMeasurementJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 16
    return-void
.end method

.method public final zza(Landroid/content/Intent;)V
    .locals 0

    .line 6
    return-void
.end method

.method public final zza(I)Z
    .locals 0

    .line 17
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
