.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzado;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# static fields
.field private static final zza:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzadq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzado;->zza:Ljava/util/Map;

    return-void
.end method

.method public static zza(Ljava/lang/String;Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Lcom/google/android/gms/internal/firebase-auth-api/zzact;)Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;
    .locals 0

    .line 1
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzado;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzact;)V

    .line 2
    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/zzadr;

    invoke-direct {p2, p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzadr;-><init>(Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Ljava/lang/String;)V

    return-object p2
.end method

.method public static zza()V
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzado;->zza:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 8
    return-void
.end method

.method static synthetic zza(Ljava/lang/String;)V
    .locals 1

    .line 3
    nop

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzado;->zza:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    return-void
.end method

.method private static zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzact;)V
    .locals 4

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzado;->zza:Ljava/util/Map;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzadq;

    .line 10
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, p1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzadq;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzact;J)V

    .line 11
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    return-void
.end method

.method public static zza(Ljava/lang/String;Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Landroid/app/Activity;Ljava/util/concurrent/Executor;)Z
    .locals 8

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzado;->zza:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 14
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzadq;

    .line 15
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzadq;->zzb:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x1d4c0

    cmp-long v1, v4, v6

    if-gez v1, :cond_1

    .line 16
    iget-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzadq;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    if-eqz v1, :cond_0

    .line 17
    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzadq;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Landroid/app/Activity;Ljava/util/concurrent/Executor;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    .line 18
    :cond_0
    const/4 p0, 0x1

    return p0

    .line 19
    :cond_1
    invoke-static {p0, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzado;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzact;)V

    .line 20
    return v2

    .line 21
    :cond_2
    invoke-static {p0, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzado;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzact;)V

    .line 22
    return v2
.end method
