.class public final Lcom/google/firebase/auth/internal/zzbu;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# instance fields
.field private volatile zza:I

.field private final zzb:Lcom/google/firebase/auth/internal/zzak;

.field private volatile zzc:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/firebase/auth/internal/zzak;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/auth/internal/zzbu;->zzc:Z

    .line 5
    iput v0, p0, Lcom/google/firebase/auth/internal/zzbu;->zza:I

    .line 6
    iput-object p2, p0, Lcom/google/firebase/auth/internal/zzbu;->zzb:Lcom/google/firebase/auth/internal/zzak;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->initialize(Landroid/app/Application;)V

    .line 8
    invoke-static {}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->getInstance()Lcom/google/android/gms/common/api/internal/BackgroundDetector;

    move-result-object p1

    new-instance p2, Lcom/google/firebase/auth/internal/zzbt;

    invoke-direct {p2, p0}, Lcom/google/firebase/auth/internal/zzbt;-><init>(Lcom/google/firebase/auth/internal/zzbu;)V

    .line 9
    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->addListener(Lcom/google/android/gms/common/api/internal/BackgroundDetector$BackgroundStateChangeListener;)V

    .line 10
    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/FirebaseApp;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/auth/internal/zzak;

    invoke-direct {v1, p1}, Lcom/google/firebase/auth/internal/zzak;-><init>(Lcom/google/firebase/FirebaseApp;)V

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/auth/internal/zzbu;-><init>(Landroid/content/Context;Lcom/google/firebase/auth/internal/zzak;)V

    .line 2
    return-void
.end method

.method static bridge synthetic zza(Lcom/google/firebase/auth/internal/zzbu;)Lcom/google/firebase/auth/internal/zzak;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/auth/internal/zzbu;->zzb:Lcom/google/firebase/auth/internal/zzak;

    return-object p0
.end method

.method static bridge synthetic zza(Lcom/google/firebase/auth/internal/zzbu;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/firebase/auth/internal/zzbu;->zzc:Z

    return-void
.end method

.method private final zzb()Z
    .locals 1

    .line 34
    iget v0, p0, Lcom/google/firebase/auth/internal/zzbu;->zza:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/firebase/auth/internal/zzbu;->zzc:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static bridge synthetic zzb(Lcom/google/firebase/auth/internal/zzbu;)Z
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/auth/internal/zzbu;->zzb()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final zza()V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzbu;->zzb:Lcom/google/firebase/auth/internal/zzak;

    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzak;->zzb()V

    .line 12
    return-void
.end method

.method public final zza(I)V
    .locals 1

    .line 13
    if-lez p1, :cond_0

    iget v0, p0, Lcom/google/firebase/auth/internal/zzbu;->zza:I

    if-nez v0, :cond_0

    .line 14
    iput p1, p0, Lcom/google/firebase/auth/internal/zzbu;->zza:I

    .line 15
    invoke-direct {p0}, Lcom/google/firebase/auth/internal/zzbu;->zzb()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzbu;->zzb:Lcom/google/firebase/auth/internal/zzak;

    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzak;->zzc()V

    goto :goto_0

    .line 17
    :cond_0
    if-nez p1, :cond_1

    iget v0, p0, Lcom/google/firebase/auth/internal/zzbu;->zza:I

    if-eqz v0, :cond_1

    .line 18
    nop

    .line 19
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzbu;->zzb:Lcom/google/firebase/auth/internal/zzak;

    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzak;->zzb()V

    .line 20
    :cond_1
    :goto_0
    iput p1, p0, Lcom/google/firebase/auth/internal/zzbu;->zza:I

    .line 21
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafe;)V
    .locals 6

    .line 22
    if-nez p1, :cond_0

    .line 23
    return-void

    .line 24
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafe;->zza()J

    move-result-wide v0

    .line 25
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 26
    const-wide/16 v0, 0xe10

    .line 27
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafe;->zzb()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    add-long/2addr v2, v0

    .line 28
    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzbu;->zzb:Lcom/google/firebase/auth/internal/zzak;

    .line 29
    iput-wide v2, p1, Lcom/google/firebase/auth/internal/zzak;->zza:J

    .line 30
    const-wide/16 v0, -0x1

    iput-wide v0, p1, Lcom/google/firebase/auth/internal/zzak;->zzb:J

    .line 31
    invoke-direct {p0}, Lcom/google/firebase/auth/internal/zzbu;->zzb()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 32
    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzbu;->zzb:Lcom/google/firebase/auth/internal/zzak;

    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/zzak;->zzc()V

    .line 33
    :cond_2
    return-void
.end method
