.class public final Lcom/google/android/gms/internal/measurement/zzmz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@21.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final enum zza:I

.field public static final enum zzb:I

.field private static final synthetic zzc:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    sput v0, Lcom/google/android/gms/internal/measurement/zzmz;->zza:I

    .line 2
    const/4 v1, 0x2

    sput v1, Lcom/google/android/gms/internal/measurement/zzmz;->zzb:I

    .line 3
    filled-new-array {v0, v1}, [I

    move-result-object v0

    .line 4
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzmz;->zzc:[I

    return-void
.end method
