.class public final Lcom/google/android/gms/internal/measurement/zzix$zze;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@21.5.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zze"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final enum zza:I

.field public static final enum zzb:I

.field public static final enum zzc:I

.field public static final enum zzd:I

.field public static final enum zze:I

.field public static final enum zzf:I

.field public static final enum zzg:I

.field private static final synthetic zzh:[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    const/4 v0, 0x1

    sput v0, Lcom/google/android/gms/internal/measurement/zzix$zze;->zza:I

    .line 2
    const/4 v1, 0x2

    sput v1, Lcom/google/android/gms/internal/measurement/zzix$zze;->zzb:I

    .line 3
    const/4 v2, 0x3

    sput v2, Lcom/google/android/gms/internal/measurement/zzix$zze;->zzc:I

    .line 4
    const/4 v3, 0x4

    sput v3, Lcom/google/android/gms/internal/measurement/zzix$zze;->zzd:I

    .line 5
    const/4 v4, 0x5

    sput v4, Lcom/google/android/gms/internal/measurement/zzix$zze;->zze:I

    .line 6
    const/4 v5, 0x6

    sput v5, Lcom/google/android/gms/internal/measurement/zzix$zze;->zzf:I

    .line 7
    const/4 v6, 0x7

    sput v6, Lcom/google/android/gms/internal/measurement/zzix$zze;->zzg:I

    .line 8
    new-array v7, v6, [I

    const/4 v8, 0x0

    aput v0, v7, v8

    aput v1, v7, v0

    aput v2, v7, v1

    aput v3, v7, v2

    aput v4, v7, v3

    aput v5, v7, v4

    aput v6, v7, v5

    .line 9
    sput-object v7, Lcom/google/android/gms/internal/measurement/zzix$zze;->zzh:[I

    return-void
.end method

.method public static zza()[I
    .locals 1

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzix$zze;->zzh:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
