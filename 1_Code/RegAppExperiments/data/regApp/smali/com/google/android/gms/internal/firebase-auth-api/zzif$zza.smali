.class public abstract enum Lcom/google/android/gms/internal/firebase-auth-api/zzif$zza;
.super Ljava/lang/Enum;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/firebase-auth-api/zzif;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzif$zza;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/firebase-auth-api/zzif$zza;

.field public static final enum zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzif$zza;

.field private static final synthetic zzc:[Lcom/google/android/gms/internal/firebase-auth-api/zzif$zza;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzih;

    const-string v1, "ALGORITHM_NOT_FIPS"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzih;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/firebase-auth-api/zzig;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzif$zza;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzif$zza;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzij;

    const-string v4, "ALGORITHM_REQUIRES_BORINGCRYPTO"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzij;-><init>(Ljava/lang/String;ILcom/google/android/gms/internal/firebase-auth-api/zzii;)V

    sput-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzif$zza;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzif$zza;

    .line 3
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/android/gms/internal/firebase-auth-api/zzif$zza;

    aput-object v0, v3, v2

    aput-object v1, v3, v5

    .line 4
    sput-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzif$zza;->zzc:[Lcom/google/android/gms/internal/firebase-auth-api/zzif$zza;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/android/gms/internal/firebase-auth-api/zzil;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzif$zza;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/firebase-auth-api/zzif$zza;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzif$zza;->zzc:[Lcom/google/android/gms/internal/firebase-auth-api/zzif$zza;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/firebase-auth-api/zzif$zza;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/firebase-auth-api/zzif$zza;

    return-object v0
.end method


# virtual methods
.method public abstract zza()Z
.end method
