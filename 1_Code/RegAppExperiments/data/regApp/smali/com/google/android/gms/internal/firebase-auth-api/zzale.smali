.class final Lcom/google/android/gms/internal/firebase-auth-api/zzale;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# static fields
.field private static final zza:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzb:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzald;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzald;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzale;->zza:Ljava/util/Iterator;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzalg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzalg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzale;->zzb:Ljava/lang/Iterable;

    return-void
.end method

.method static zza()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzale;->zzb:Ljava/lang/Iterable;

    return-object v0
.end method

.method static bridge synthetic zzb()Ljava/util/Iterator;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzale;->zza:Ljava/util/Iterator;

    return-object v0
.end method
