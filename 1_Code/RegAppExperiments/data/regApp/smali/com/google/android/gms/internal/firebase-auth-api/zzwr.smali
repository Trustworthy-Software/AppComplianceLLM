.class public final enum Lcom/google/android/gms/internal/firebase-auth-api/zzwr;
.super Ljava/lang/Enum;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzwr;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

.field public static final enum zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

.field public static final enum zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

.field private static final synthetic zzd:[Lcom/google/android/gms/internal/firebase-auth-api/zzwr;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

    const-string v1, "UNCOMPRESSED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

    const-string v2, "COMPRESSED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

    .line 3
    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

    const-string v3, "DO_NOT_USE_CRUNCHY_UNCOMPRESSED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

    .line 4
    filled-new-array {v0, v1, v2}, [Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

    move-result-object v0

    .line 5
    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;->zzd:[Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/firebase-auth-api/zzwr;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzwr;->zzd:[Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/firebase-auth-api/zzwr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/firebase-auth-api/zzwr;

    return-object v0
.end method
