.class final enum Lcom/google/android/gms/internal/firebase-auth-api/zzaiq;
.super Ljava/lang/Enum;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzaiq;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaiq;

.field public static final enum zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzaiq;

.field public static final enum zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzaiq;

.field public static final enum zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzaiq;

.field private static final synthetic zze:[Lcom/google/android/gms/internal/firebase-auth-api/zzaiq;


# instance fields
.field private final zzf:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaiq;

    const-string v1, "SCALAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaiq;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaiq;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzaiq;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzaiq;

    const-string v3, "VECTOR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaiq;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzaiq;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzaiq;

    .line 3
    new-instance v3, Lcom/google/android/gms/internal/firebase-auth-api/zzaiq;

    const-string v5, "PACKED_VECTOR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzaiq;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzaiq;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzaiq;

    .line 4
    new-instance v4, Lcom/google/android/gms/internal/firebase-auth-api/zzaiq;

    const-string v5, "MAP"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaiq;-><init>(Ljava/lang/String;IZ)V

    sput-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzaiq;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzaiq;

    .line 5
    filled-new-array {v0, v1, v3, v4}, [Lcom/google/android/gms/internal/firebase-auth-api/zzaiq;

    move-result-object v0

    .line 6
    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaiq;->zze:[Lcom/google/android/gms/internal/firebase-auth-api/zzaiq;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 8
    iput-boolean p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaiq;->zzf:Z

    .line 9
    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/firebase-auth-api/zzaiq;
    .locals 1

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaiq;->zze:[Lcom/google/android/gms/internal/firebase-auth-api/zzaiq;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/firebase-auth-api/zzaiq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/firebase-auth-api/zzaiq;

    return-object v0
.end method
