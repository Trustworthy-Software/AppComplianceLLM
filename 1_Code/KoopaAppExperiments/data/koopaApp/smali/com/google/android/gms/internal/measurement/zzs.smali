.class public final enum Lcom/google/android/gms/internal/measurement/zzs;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-measurement@@21.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/measurement/zzs;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/measurement/zzs;

.field public static final enum zzb:Lcom/google/android/gms/internal/measurement/zzs;

.field public static final enum zzc:Lcom/google/android/gms/internal/measurement/zzs;

.field public static final enum zzd:Lcom/google/android/gms/internal/measurement/zzs;

.field public static final enum zze:Lcom/google/android/gms/internal/measurement/zzs;

.field private static final synthetic zzf:[Lcom/google/android/gms/internal/measurement/zzs;


# instance fields
.field private final zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzs;

    const-string v1, "DEBUG"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzs;->zza:Lcom/google/android/gms/internal/measurement/zzs;

    .line 8
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzs;

    const/4 v2, 0x1

    const/4 v4, 0x6

    const-string v5, "ERROR"

    invoke-direct {v1, v5, v2, v4}, Lcom/google/android/gms/internal/measurement/zzs;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzs;->zzb:Lcom/google/android/gms/internal/measurement/zzs;

    .line 9
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzs;

    const-string v4, "INFO"

    const/4 v5, 0x2

    const/4 v6, 0x4

    invoke-direct {v2, v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzs;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/measurement/zzs;->zzc:Lcom/google/android/gms/internal/measurement/zzs;

    .line 10
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzs;

    const-string v7, "VERBOSE"

    invoke-direct {v4, v7, v3, v5}, Lcom/google/android/gms/internal/measurement/zzs;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/internal/measurement/zzs;->zzd:Lcom/google/android/gms/internal/measurement/zzs;

    .line 11
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzs;

    const-string v5, "WARN"

    const/4 v7, 0x5

    invoke-direct {v3, v5, v6, v7}, Lcom/google/android/gms/internal/measurement/zzs;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/measurement/zzs;->zze:Lcom/google/android/gms/internal/measurement/zzs;

    .line 12
    filled-new-array {v0, v1, v2, v4, v3}, [Lcom/google/android/gms/internal/measurement/zzs;

    move-result-object v0

    .line 13
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzs;->zzf:[Lcom/google/android/gms/internal/measurement/zzs;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lcom/google/android/gms/internal/measurement/zzs;->zzg:I

    .line 16
    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/measurement/zzs;
    .locals 1

    .line 17
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzs;->zzf:[Lcom/google/android/gms/internal/measurement/zzs;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/measurement/zzs;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/zzs;

    return-object v0
.end method

.method public static zza(I)Lcom/google/android/gms/internal/measurement/zzs;
    .locals 0

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 6
    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzs;->zzc:Lcom/google/android/gms/internal/measurement/zzs;

    return-object p0

    .line 5
    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzs;->zzb:Lcom/google/android/gms/internal/measurement/zzs;

    return-object p0

    .line 4
    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzs;->zze:Lcom/google/android/gms/internal/measurement/zzs;

    return-object p0

    .line 3
    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzs;->zza:Lcom/google/android/gms/internal/measurement/zzs;

    return-object p0

    .line 2
    :pswitch_4
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzs;->zzd:Lcom/google/android/gms/internal/measurement/zzs;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
