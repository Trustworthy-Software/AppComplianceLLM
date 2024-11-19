.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzpd;
.super Ljava/lang/RuntimeException;
.source "com.google.firebase:firebase-auth@@22.2.0"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 5
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    return-void
.end method

.method private constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 7
    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzpg;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzpg<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzpg;->zza()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 2
    :catch_0
    move-exception p0

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzpd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzpd;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
